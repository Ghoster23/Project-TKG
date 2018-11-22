// Inherit the parent event
event_inherited();

visible = true;

switch state {
	case 0:
		///Mimic Tell
		if(blink){
			if(image_speed == 0){
				image_speed = 0.2;
					
			}else if(image_speed == 0.2 and (image_index == 0 or image_index == 9)){
				image_speed = 0;
				image_index = 0;
				blink = false;
			}
		}
	break;
	
	case 1:
		if(go){
			if(sprite_index != spr_mimic_a){
				image_speed  = 0.8;
				sprite_index = spr_mimic_a;
			}
		}
	break;
}