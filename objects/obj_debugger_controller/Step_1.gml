hc = global.gui_WD / 2;
vc = global.gui_HG / 2;

if(check){
	switch state {
		case 0:
			if(keyboard_check_pressed(vk_end) and
			   keyboard_check_pressed(vk_alt)){
				state = prev_state;
				show_debug_overlay(true);
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
		break;
		default:
			if(keyboard_check_released(vk_f1)){
				state = 1;
			}else if(keyboard_check_released(vk_f2)){
				state = 2;
			}else if(keyboard_check_released(vk_f3)){
				state = 3;
			}else if(keyboard_check_released(vk_f4)){
				state = 4;
			}else if(keyboard_check_released(vk_f5)){
				state = 5;
			}else if(keyboard_check_released(vk_f6)){
				state = 6;
			}
		
			if(keyboard_check_pressed(vk_end) and
			   keyboard_check_pressed(vk_alt)){
				prev_state = state;
				state = 0;
				show_debug_overlay(false);
				check = false;
				alarm[0] = 0.5 * room_speed;
			}	
		break;
	}
}

///Debug
if keyboard_check_pressed(vk_f12){
    room_goto(rm_test);
}

if keyboard_check_pressed(vk_f11){
    room_restart();
}

if keyboard_check_pressed(vk_f10){
    room_goto(rm_CH_boss);
}

if keyboard_check_pressed(vk_f9){
    room_goto(rm_level);
}

if(keyboard_check_pressed(vk_f8)){
	scr_status_apply( statuses.immune, 60, global.body);
	scr_status_apply(   statuses.ohko, 60, global.body);
}