switch state {
	case 0:
	break;
	case 1: //Room controller
		if(room == rm_level && obj_game_controller.level_state == 1){
			debug_text += "Active enemies:\n";
			var ls_sz = ds_list_size(global.act_enemy_list);
		
			for(var i = 0; i < ls_sz; i++){
				var en = global.act_enemy_list[| i];
			
				if(instance_exists(en)){
					debug_text += object_get_name(en.object_index) + "\n";
				}
			}
		
			debug_text += "Region: " + string(global.region) +
						  " Col: " + string(global.current_col) +
						  " Row: " + string(global.current_row) + "\n";
		}
	break;
	case 2: //AI controller
	break;
	case 3: //View and Screen
		if(instance_exists(obj_view)){
			debug_text += "View: \n";
			debug_text += "Movement State: " + string(obj_view.m_state) + "\n";
			debug_text += "Zoom State: " + string(obj_view.z_state) + "\n";

			var xx = camera_get_view_x(view_camera[0]);
			var yy = camera_get_view_y(view_camera[0]);

			debug_text += "X: " + string(xx) + " Y: " + string(yy) + "\n";
			debug_text += "WD: " + string(obj_view.cam_wd) + " HG: " + string(obj_view.cam_hg) + "\n";
			debug_text += "Zoom: " + string(obj_view.zoom) + "\n";
			debug_text += "Target zoom: " + string(obj_view.t_zoom) + "\n\n";
		}
		if(instance_exists(obj_screen_controller)){		
			debug_text += "Application Surface: ";
			debug_text += "offx: " + string(global.Xoffset) + " offy: " + string(global.Yoffset) + "\n";
			debug_text += "WD: " + string(surface_get_width(application_surface)) +
						  "HG: " + string(surface_get_height(application_surface)) + "\n";
			if(window_get_fullscreen()){
				debug_text += "Monitor: \n";
				debug_text += "WD: " + string(global.MonitorW) + " HG: " + string(global.MonitorH) + "\n";
			}else {
				debug_text += "Window: \n";
				debug_text += "WD: " + string(global.MonitorW) + " HG: " + string(global.MonitorH) + "\n";
			}
		}
		
		if(keyboard_check_released(ord("L"))){ 
			screen_lines++;
			screen_lines = screen_lines mod 2;
		}
	break;
	case 4: //Input and cursor
		debug_text += "Mouse: \n";
		debug_text += "On-Screen - X: " + string(device_mouse_x_to_gui(0));
		debug_text += "  Y: " + string(device_mouse_y_to_gui(0)) + "\n";
		debug_text += "In-Room - X: " + string(obj_cursor.ir_mx);
		debug_text += "  Y: " + string(obj_cursor.ir_my) + "\n\n";
		
		debug_text += "Input: \n";
		debug_text += obj_input_controller.text;
	break;
	case 5: //Gen controller
	break;
	case 6: //Player
		if(instance_exists(global.body)){
			debug_text += "Player State: " + string(global.body.state) + "\n";
			debug_text += "Weapon State: " + string(global.body.weapon.state) + "\n";
		}
	break;
}