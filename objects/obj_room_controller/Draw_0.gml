/*if(global.status[3,0]){
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
	
	part_emitter_burst(global.ps,global.feet_em,global.pt_way,-20);
	
	/*draw_set_color(c_aqua);
	draw_set_alpha(0.5);
	draw_rectangle(global.current_column      * global.roomwd - 64,
					       global.current_row         * global.roomhg - 64,
					      (global.current_column + 1) * global.roomwd + 64,
					      (global.current_row    + 1) * global.roomhg + 96, false);
	draw_set_color(c_white);
	draw_set_alpha(1);*/
//}