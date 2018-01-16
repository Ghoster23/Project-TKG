in_range = false;

if pedestal != -1 {
	if instance_exists(pedestal){
		if pedestal.dis {
			draw_sprite(spr_interact,0,x,iy-32);
			in_range = true;
		}
	}
}else if distance_to_object(global.body) <= 32 {
	 draw_sprite(spr_interact,0,x,iy-32);
	 in_range = true;
}

draw_sprite(spr_player_shadow,0,x + 16,iy + 30);