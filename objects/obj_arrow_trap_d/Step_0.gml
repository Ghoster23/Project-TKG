if not global.pause {
	scr_pause_end(1);

	if instance_exists(global.body) {
		if collision_line(x+15,y,x+15,y+512,global.body,true,true)and not collision_line(x+15,y,x+15,global.body.y,obj_above_ground_parent,true,true) and 
		collision_line(x+15,y,x+15,y+512,obj_enemy_parent,true,true) and not collision_line(x+15,y,x+15,obj_enemy_parent.y,obj_above_ground_parent,true,true) and
		alarm[0] == -1 {
			alarm[0] = 6;
		
		}
	}
	
}else {
	scr_pause_start(1);
	
}