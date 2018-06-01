switch m_state {
	case 0: //Stopped

	break;
	
	case 1: //Move
		x += (cam_x_t - x) * m_spd;
		y += (cam_y_t - y) * m_spd;
	break;
	
	case 2: //Shake
		cam_x_s = cam_x_c + random_range(-global.shake,global.shake);
		cam_y_s = cam_y_c + random_range(-global.shake,global.shake);
			
		x = scr_approach(x, cam_x_s, 8);
		y = scr_approach(y, cam_y_s, 8);
	break;
}

//FIX ME
//screen_save(working_directory + "death.png");
//room_goto(rm_menu_1);