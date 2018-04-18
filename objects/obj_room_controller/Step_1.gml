switch state {
	case 0: //Unlocked
		if(room == rm_level){
			var xx = global.body.phy_position_x;
			var yy = global.body.phy_position_y;
			
			if(xx < global.current_column * global.roomwd - 24 ||
			   yy < global.current_row    * global.roomhg - 32 ||
				(global.current_column + 1) * global.roomwd + 24 < xx ||
				(global.current_row    + 1) * global.roomhg + 64 < yy ){
				
				/// Get current Player room
				global.current_column = global.body.phy_position_x div global.roomwd;
				global.current_row    = global.body.phy_position_y div global.roomhg;
				
				///Mark room
				if(instance_exists(obj_minimap_controller)){
					with(obj_minimap_controller){
						current_room = scr_room_get();
					}
				}
				
				state = 3;
			}
		}else if(room = rm_lvl_editor_test){
			global.current_column = 0;
			global.current_row    = 0;
			
			state = 3;
		}
	break;
	case 1: //Locked
		if(ds_exists(global.act_enemy_list,ds_type_list) &&
		   ds_list_size(global.act_enemy_list) == 0){
			state = 2;	
		}
	break;
	case 2: //Cleared
		if(instance_exists(obj_inventory_controller)){
			var equiped = obj_inventory_controller.eq_active;
	
			for(var i = 0; i < 3; i++){
				if(equiped[i] == equips.rod_of_asclepius){
					scr_player_status_apply(statuses.regen, 4);
				}
			}
		}
		
		state = 0;
	break;
	case 3: //New Room
		/* Add enemies to active enemy list */
		if((room == rm_level and obj_view.stopped) || 
		   (room == rm_test) || 
		   (room == rm_lvl_editor_test)){
			
			enemy = obj_grounded_enemy_parent;
			scr_get_active_enemies();
	
			enemy = obj_flying_enemy_parent;
			scr_get_active_enemies();
			
			surface_set_target(global.fluid_surface);
			draw_clear_alpha(c_black,0);
			surface_reset_target();
			
			state = 1;
		}
	break;
}

if keyboard_check_released(ord("P")) {
	var size = ds_list_size(global.act_enemy_list);
	
	show_debug_message(size);
	for(var i = 0; i < size; i++){
		show_debug_message(object_get_name(global.act_enemy_list[| i].object_index));
	}
}