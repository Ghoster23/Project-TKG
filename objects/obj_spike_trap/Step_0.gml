if not global.pause {
	scr_pause_end(alarm_count);
	
	if(on){
		switch state {
			//OFF
			case 0:
				if((place_meeting(x,y,obj_feet) or 
				    place_meeting(x,y,obj_grounded_enemy_parent) and not triggered)){
					triggered = true;
				}
				
				if(triggered){
					alarm[0] = 0.33 * room_speed;
					state = 1;
				}
		
			break;
			
			//Charging
			case 1:
			break;
			
			//ON
			case 2:
			break;
		}
	}
	
}else {
	scr_pause_start(alarm_count);
	
}