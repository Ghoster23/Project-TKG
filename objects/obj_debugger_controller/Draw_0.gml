switch state {
	case 0:
	break;
	case 1: //Room controller
	break;
	case 2: //AI controller
		if(variable_global_exists("ai_grid") && variable_global_exists("ai_path")){
			draw_set_alpha(0.5);
			draw_set_color(c_red);

			mp_grid_draw(global.ai_grid);

			for(i = 0; i < room_width; i += 32){
				draw_line(i,0,i,room_height);
			}
			for(i = 0; i < room_height; i += 32){
				draw_line(i,0,i,room_width);
			}

			draw_set_color(c_white);
			draw_set_alpha(1);

			draw_path(global.ai_path,x,y,true);
		}
	break;
	case 3: //View and Screen
	break;
	case 4: //Input and cursor
	break;
	case 5: //Gen controller
	break;
	case 6: //Player
	break;
}