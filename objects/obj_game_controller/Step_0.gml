switch room {
	case rm_char_select:
		scr_char_stats();
	
		global.body = bodies[global.char];
	
		global.dead = false;
	break;
	
	case rm_lvl_editor_test:
		if(global.dead){
			scr_char_stats();
			global.dead = false;
			room_goto(rm_lvl_editor);
		}
	break;
	
	case rm_level:	
		switch level_state {
			case 0: //Generation
				if(not global.gen){
					///Create HUD
					if(instance_exists(global.body) && !instance_exists(obj_player_hud)){
					    instance_create_layer(0,0,"IF",obj_player_hud);
					}
		
					instance_create_layer(0,0,"Instances",obj_map_controller);
					
					level_state++;
				}
			break;
			
			case 1: //On-going
			
			break;
		}
	break;
}

//Physics toggling for game pausing
if(room != rm_menu_1 and room != rm_char_select and room != rm_dead){
	if global.pause {
		physics_pause_enable(true);
	}else {
		physics_pause_enable(false);
	}
}