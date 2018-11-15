///@description Updates the minimap info
{
if(!instance_exists(obj_map_controller)){
	scr_show_error(1,true,["scr_minimap_update","obj_map_controller"]);
	return;
}

if(!instance_exists(obj_minimap)){
	scr_show_error(1,true,["scr_minimap_update","obj_minimap"]);
	return;
}

with obj_map_controller {
	var srm = (global.current_row - 1) * dg_col + global.current_col - 1;
	
	for(var i = 0; i < 3; i++){
		for(var j = 0; j < 3; j++){
			var pos  = srm + i * dg_col + j;
			var info = scr_map_get_room(pos);
			
			if(info != -1){
				switch info[2] {
					case 0: //Not visited
						obj_minimap.sqr_layout[i * 3 + j] = -1;
					break;
				
					case 1: //Not visited but connects to a visited room
						obj_minimap.sqr_layout[i * 3 + j] = [scr_mm_tile([0,0,0,0]),info[1]];
					break;
				
					default://Visited rooms
						obj_minimap.sqr_layout[i * 3 + j] = [scr_mm_tile(info[0]),info[1]];
					break;
				}
			}else {
				obj_minimap.sqr_layout[i * 3 + j] = -1;
			}			
		}
	}
}
}