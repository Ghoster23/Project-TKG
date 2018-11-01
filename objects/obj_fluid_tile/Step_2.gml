if(act && global.check == 1){
	act = false;
	for(var i = 0; i < v_cells; i++){
		for(var j = 0; j < h_cells; j++){
			var ind = i * h_cells + j;
			
			var count = tiles[ind];
			var type  = tiles_t[ind];
			var drawn = tiles_d[ind];
			
			if(count > 1){
				act = true;
				
				//Ticks
				if(not global.pause){ count--; }
				
				if(not drawn){
					var cx = gx + j;
					var cy = gy + i;
					
					var data = tile_set_index(cell_data, type + 1);
					var suc = tilemap_set(global.fluid_tlm, data, cx, cy);
					tiles_d[ind] = 1;
				}
				
				tiles[ind] = count;
				
			}else if(type != -1){
				tiles[ind]   =  0;
				tiles_t[ind] = -1;
				tiles_d[ind] =  0;
				
				var cx = gx + j;
				var cy = gy + i;
				
				tilemap_set(global.fluid_tlm, cell_data, cx, cy);
			}
		}
	}
}