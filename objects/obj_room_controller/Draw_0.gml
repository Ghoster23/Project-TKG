if(global.status[3,0]){
	k = array_length_1d(path);
	diff = -1;
	
	if(k >= 2){
		diff = path[k - 1] - path[k - 2];
	}

	switch diff{
		case -1:
			dir = 0;
		break;
		case  1:
			dir = 2;
		break;
		case  8:
			dir = 1;
		break;
		case -8:
			dir = 3;
		break;
	}
	
	part_type_gravity(global.pt_way, 10, 90*dir);
	
	/*if(k != 0){
		part_type_direction(global.pt_way,90 * dir - 15 * (8 - k mod 8), 90 * dir + 15 * (8 - k mod 8), 0, 0);
	}else {
		part_type_direction(global.pt_way,0,360, 0, 0);
	}*/

	//draw_sprite_ext(spr_disappearing_footprints,-1,global.body.feet.x,global.body.feet.y,1,1,90*dir,c_white,0.9);
	part_emitter_burst(global.ps,global.feet_em,global.pt_way,-20);
}