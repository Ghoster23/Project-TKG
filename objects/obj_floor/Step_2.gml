if(global.check == 1){
	for(var k = 0; k < v_sqrs; k++){
		for(var l = 0; l < h_sqrs; l++){
			var d_lines = k * sqr_v_cells;
			var d_cells = l * sqr_h_cells;
			
			if(sqrs[k * h_sqrs + l] == true){
				sqrs[k * h_sqrs + l] = false;
				
				#region Square
				for(var i = 0; i < sqr_v_cells; i++){
					for(var j = 0; j < sqr_h_cells; j++){
						var ind = (d_lines + i) * cells_p_line + d_cells + j;
			
						var count = tiles[ind];
						var type  = tiles_t[ind];
						var drawn = tiles_d[ind];
			
						if(count > 1){
							#region Update cell
							sqrs[k * h_sqrs + l] = true;
							
							//Ticks
							if(not global.pause){ count--; }
				
							if(drawn == 0){
								var cx = gx + d_cells + j;
								var cy = gy + d_lines + i;
								
								var suc = tilemap_set(global.fluid_tlm, 
													  cell_datas[type + 1],
													  cx, cy);
								tiles_d[ind] = 1;
							}
				
							tiles[ind] = count;
							#endregion
				
						}else if(type != -1){
							#region Clean cell
							tiles[ind]   =  0;
							tiles_t[ind] = -1;
							tiles_d[ind] =  0;
				
							var cx = gx + d_cells + j;
							var cy = gy + d_lines + i;
				
							tilemap_set(global.fluid_tlm, cell_data, cx, cy);
							#endregion
						}
					}
				}
				#endregion
			}
		}
	}
}