///@description Updates the minimap info
{
with obj_map_controller {
	var srm = (global.current_row - 1) * dg_col + global.current_col - 1;
	
	for(var i = 0; i < 3; i++){
		for(var j = 0; j < 3; j++){
			var pos  = srm + i * dg_col + j;
			var info = scr_map_get_room(pos);
			
			if(is_array(info)){
				
				if(info[2]){
					var doors = info[0];
					if(info[2] == 1){ doors = [0,0,0,0]; }
				
					obj_minimap.sqr_layout[i * 3 + j] = [doors,info[1]];
				}
			}else {
				obj_minimap.sqr_layout[i * 3 + j] = -1;
			}
		}
	}
}
}