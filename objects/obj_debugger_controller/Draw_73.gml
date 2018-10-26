switch state {
	case 0:
	break;
	case 1: //Room controller
	break;
	case 2: //AI controller
		if(variable_global_exists("dungeon") && instance_exists(global.dungeon)){
			draw_set_alpha(0.5);
			draw_set_color(c_red);

			mp_grid_draw(global.dungeon.mp_grid);

			for(i = 0; i < room_width; i += 32){
				draw_line(i,0,i,room_height);
			}
			for(i = 0; i < room_height; i += 32){
				draw_line(i,0,i,room_width);
			}

			draw_set_color(c_white);
			draw_set_alpha(1);

			draw_path(global.dungeon.mp_path,x,y,true);
		}
	break;
	case 3: //View and Screen
		draw_rectangle(0,0,16,16,false);
		
		if(screen_lines){
			var g_wd = surface_get_width(application_surface);
			var g_hg = surface_get_height(application_surface);
			
			draw_line(0,g_hg/2,g_wd,g_hg/2);
			draw_line(g_wd/2,0,g_wd/2,g_hg);
		}
	break;
	case 4: //Input and cursor
	break;
	case 5: //Gen controller
	break;
	case 6: //Player
	break;
}