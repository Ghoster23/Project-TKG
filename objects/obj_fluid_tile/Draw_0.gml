if(act && global.check == 1){
	act = false;
	draw_self();
	for(var i = 0; i < v_cells; i++){
		for(var j = 0; j < h_cells; j++){
			var count = array_2d_get_value(tiles, i, j);
			var type  = array_2d_get_value(tiles_t, i, j);
			var drawn = array_2d_get_value(tiles_d, i, j);
			
			if(count > 1){
				act = true;
				
				//Ticks
				if(not global.pause){
					count--;
				}
				
				if(not drawn){
					var cx = gx + j;
					var cy = gy + i;
					
					var data = tilemap_get(global.fluid_tlm, cx, cy);
					tile_set_index(data, type + 1);
					tilemap_set(global.fluid_tlm, data, cx, cy);
					show_debug_message("Drawing");
					tiles_d = array_2d_set_value(tiles_d, i, j, 1);
				}
				
				tiles = array_2d_set_value(tiles, i, j, count);
				
			}else {
				tiles   = array_2d_set_value(  tiles, i, j,  0);
				tiles_t = array_2d_set_value(tiles_t, i, j, -1);
				tiles   = array_2d_set_value(tiles_d, i, j,  0);
				
				var cx = gx + j;
				var cy = gy + i;
					
				var data = tilemap_get(global.fluid_tlm, cx, cy);
				tile_set_index(data, 0);
				tilemap_set(global.fluid_tlm, data, cx, cy);
			}
		}
	}
}