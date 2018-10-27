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
		   not ds_list_size(global.act_enemy_list)){
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
		}
	break;
	
	case 5: //Unloading
		if(col_match + row_match < 2){
			state = 2;
			
		}
	break;
}