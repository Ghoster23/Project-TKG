if not global.pause {
	scr_pause_end(1);
	
	switch state {
		//OFF
		case 0:
			if instance_exists(global.body) {
				if (place_meeting(x,y,obj_feet) or place_meeting(x,y,obj_enemy_parent)) and alarm[0] == -1{
					alarm[0] = 0.3 * room_speed;
					
				}
			}
			
			if image_index > 1{
				image_speed = -0.4;
			}else {
				image_index = 0;
				image_speed = 0;
			}
		
		break;
		//ON
		case 1:
			if image_index < 5{
				image_speed = 0.9;
				
			}else {
				image_index = 6;
				image_speed = 0;
				
				if alarm[0] == -1 {
					alarm[0] = 0.5 * room_speed;
				}
				
			}
			
			if place_meeting(x,y,obj_feet) {
				scr_damage_player(0,15,global.p_def);
			
			}
		
		break;
	}
	
}else {
	scr_pause_start(1);
	
}