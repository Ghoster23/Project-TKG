///@description Sprite control and immunity

//Immunity
event_inherited();

if(not global.pause and not flash and not stun){
	switch state {
		case 0:
			image_speed = 1.5;
			scr_entity_sprite_control(spr_bat,i_dir,true);
		break;
		
		case 1:
			image_speed = 1.5;
			scr_entity_sprite_control(spr_bat,  dir,true);
		break;
		
		case 2:
			image_speed = 0;
		break;
		
		case 3:
		break;
	}	
}