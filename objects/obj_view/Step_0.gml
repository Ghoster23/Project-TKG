switch m_state {
	case 0: //Stopped

	break;
	
	case 1: //Move
		x += (cam_x_t - x) * m_spd;
		y += (cam_y_t - y) * m_spd;
	break;
}

if(global.shake){
	cam_x_s = x + random_range(-global.shake,global.shake) * 4;
	cam_y_s = y + random_range(-global.shake,global.shake) * 4;
			
	x = scr_approach(x, cam_x_s, 16);
	y = scr_approach(y, cam_y_s, 16);
}

//FIX ME
//screen_save(working_directory + "death.png");
//room_goto(rm_menu_1);