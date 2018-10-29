var col_match = abs(global.current_col - col);
var row_match = abs(global.current_row - row);

switch state {
	case 0: //Unloaded
		if(col_match + row_match < 2){
			state = 1;
		}
	break;
	
	case 1: //Loading
	break;
	
	case 2: //Open
		if(col_match + row_match == 0 and not cleared){
			state = 3;
			
			//Doors
			for(var i = 0; i < 4; i++){
				var inst = corridors[i];
				if(inst.object_index == obj_vcorridor ||
				   inst.object_index == obj_hcorridor){
					inst.state = 1;	   
				}
			}
			
		}else if(col_match + row_match >= 2){
			state = 5;
			
		}
	break;
	
	case 3: //Activating stuff
	break;
	
	case 4: //Closed
		if(ds_exists(global.act_enemy_list, ds_type_list) &&
		   ds_list_empty(global.act_enemy_list)){
			state = 2;
			
			cleared = true;
			
			//Doors
			for(var i = 0; i < 4; i++){
				var inst = corridors[i];
				if(inst.object_index == obj_vcorridor ||
				   inst.object_index == obj_hcorridor){
					inst.state = 0;	   
				}
			}
			
			#region On clear effects
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
			#endregion
		}
	break;
	
	case 5: //Unloading
		if(col_match + row_match < 2){
			state = 2;
			
		}
	break;
}