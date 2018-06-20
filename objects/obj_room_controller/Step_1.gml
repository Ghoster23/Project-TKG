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
				global.current_column = xx div global.roomwd;
				global.current_row    = yy div global.roomhg;
				
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
		//tell all the items in this here room to come torwards me
		var dgx = global.current_column*global.roomwd;
		var dgy = global.current_row*global.roomhg;
		
		item_list = collision_rectangle_list(dgx,dgy,dgx+global.roomwd,dgy+global.roomhg,obj_item,false,true);
		
		if(item_list!= noone){
			for(var i = 0; i < ds_list_size(item_list); i++){
				var ditem = ds_list_find_value(item_list,i); 
				ditem.fly2player = true;
			}
		
			ds_list_destroy(item_list);
		}
		
		if(instance_exists(obj_inventory_controller)){
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

if keyboard_check_released(ord("P")) {
	state = 3;
}