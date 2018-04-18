if not global.pause {
	scr_pause_end(1);

	if instance_exists(global.body) {
		if ((collision_line(x+15,y,x+15,y-512,global.body,true,true) and not collision_line(x+15,y,x+15,global.body.phy_position_y,obj_above_ground_parent,true,true)) ||
		(collision_line(x+15,y,x+15,y-512,obj_grounded_enemy_parent,true,true) and not collision_line(x+15,y,x+15,obj_grounded_enemy_parent.y,obj_above_ground_parent,true,true))) and
		alarm[1] == -1 {
			alarm[0] = 6;
			alarm[1] = 30;
		}
	}
	
}else {
	scr_pause_start(1);
	
}