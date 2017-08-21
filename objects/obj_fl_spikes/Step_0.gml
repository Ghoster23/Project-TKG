if not global.pause {
	scr_pause_end(1);
	
	image_index = state;
	
	if place_meeting(x,y,obj_feet) and state == 1{
		scr_damage_player(0,1,1);
	}
	
}else {
	scr_pause_start(1);
	
}