if not global.pause {
	scr_pause_end(1);
	
	if state == 0{
		if image_index >= 1{
			image_speed = -1;
			
		}else {
			image_speed = 0;
			image_index = 0;
			
		}
		
	}else if state == 1{
		if image_index <= 7 {
			image_speed = 3;
		
		}else {
			image_speed = 0;
			image_index = 8;
			
			if place_meeting(x,y,obj_feet) {
				scr_damage_player(0,1,1);
			}
			
		}
		
	}
	
}else {
	scr_pause_start(1);
	
}