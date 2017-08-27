if not global.pause {
	scr_pause_end(1);

	if instance_exists(global.body) {
		if collision_line(x,y,x,y-512,global.body,true,true) and alarm[0] == -1 {
			alarm[0] = 6;
		
		}
	}
	
}else {
	scr_pause_start(1);
	
}