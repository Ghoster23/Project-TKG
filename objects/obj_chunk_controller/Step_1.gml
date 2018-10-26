switch state {
	case 0: //Unlocked
		if(room == rm_level and instance_exists(global.body)){
			/*var cx = global.body.phy_position_x div global.roomwd;
			var cy = global.body.phy_position_y div global.roomhg;
			
			if(cx != global.current_col || cy != global.current_row){
				/// Get current Player room
				global.current_col = cx;
				global.current_row    = cy;
				
				if(!global.ds_roomgrid[# 2, global.current_row * 8 + global.current_col]){
					///Mark room
					if(instance_exists(obj_map_controller)){
						with(obj_map_controller){
							current_room = scr_room_get();
						}
					}
				
					state = 3;
				}
			}*/
			
		}else if(room = rm_lvl_editor_test){
			global.current_col = 0;
			global.current_row = 0;
			
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
			//Charge up on-hand active item
			var in_slot = scr_inv_get_pos(obj_inventory_controller.tool_slot);
			
			if(in_slot[0] == item_type.active &&
			   in_slot[2] < scr_active_get_data(in_slot[1])){
				scr_inv_set_pos(in_slot[0],in_slot[1],in_slot[2] + 1,obj_inventory_controller.tool_slot);
			}
			
			//Activate equipment effects on room clear
			var equiped = obj_inventory_controller.eq_active;
	
			for(var i = 0; i < 3; i++){
				if(equiped[i] == equips.rod_of_asclepius){
					scr_status_apply(statuses.regen, 4, global.body);
				}
			}
		}
		
		state = 0;
		
	break;
	case 3: //New Room
		/* Add enemies to active enemy list */
		/*        Clear fluid surface       */
		if((room == rm_level and obj_view.m_state == 0) || 
		   (room == rm_test) || 
		   (room == rm_lvl_editor_test)){
			
			scr_activate_enemies();
			scr_activate_traps();
			
			surface_set_target(global.fluid_surface);
			draw_clear_alpha(c_black,0);
			surface_reset_target();
			
			state = 1;
		}
	break;
}