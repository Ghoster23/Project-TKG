///@description Sprite control and immunity

//Immunity
if(prev_hp != stat[stats.hp] and state == 1){
	state = 2;
}

event_inherited();

if(not global.pause and not flash and not stun){
	switch state {
		case 0: //Idle
			image_speed = 1.5;
			
			
			
			scr_entity_sprite_control(sprs,ach_dir,0);
		break;
		
		case 1: //Travel
			sprite_index = spr_bloob_travel;
			image_speed = 1.5;
		break;
		
		case 2: //Fallen
			if(fall_state == 1){
				sprite_index = spr_bloob_fallen;
				image_speed  = 1;
			}
		break;
		
		case 3: //Phase
			sprite_index = spr_bloob_phase;
			
			if(ph_state == 0){
				image_speed = 1;
				
				if(image_index >= 2){
					image_speed = 0;
					image_index = 8;
					ph_state = 1;
				}
			}else if(ph_state == 3){
				image_speed = -1;
				
				if(image_index <= 0){
					image_speed = 0;
					image_index = 0;
					ph_state = 0;
					state = 1;
				}
			}
		break;
		
		case 4: //Anchor
		break;
	}	
}