if not global.pause {
	scr_pause_end(1);

	if instance_exists(global.body) {
		if collision_line(x,y+15,x+512,y+15,global.body,true,true)and not collision_line(x,y+15,global.body.x,y+15,obj_above_ground_parent,true,true) and alarm[0] == -1 {
			alarm[0] = 6;
		
		}
	}
	
}else {
	scr_pause_start(1);
	
}