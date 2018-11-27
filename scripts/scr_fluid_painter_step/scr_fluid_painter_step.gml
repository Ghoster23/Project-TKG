if(not global.pause and on){
	var xx = (x - sprite_xoffset);
	var yy = (y - sprite_yoffset);
	
	var flr = instance_place(x,y,obj_floor);
	
	if(flr != noone){
		xx = xx div cell_size;
		yy = yy div cell_size;
		
		#region xx
		var dx = xx - flr.gx;
		
		if(dx >= 0){
			var bxs =   0;
			var txs =  dx;
		}else {
			var bxs = -dx;
			var txs =   0;
		}
		
		var xl = min(flr.cells_p_line - txs, h_cells - bxs);
		#endregion
		
		#region yy
		var dy = yy - flr.gy;
		
		if(dy >= 0){
			var bys =   0;
			var tys =  dy;
		}else {
			var bys = -dy;
			var tys =   0;
		}
		
		var yl = min(flr.cells_p_colm - tys, v_cells - bys);
		#endregion
	
		for(var i = 0; i < yl; i++){
			var col_line = col_grid[bys + i];
			
			for(var j = 0; j < xl; j++){
				if(col_line[bxs + j]){
					with flr {
						sqrs[((tys + i) div sqr_v_cells) * h_sqrs + (txs + j) div sqr_h_cells] = true;
						var ind = (tys + i) * cells_p_line + txs + j;
						
						var pcount = other.scount;
						var ptype  = other.stype;
						
						if(tiles[ind] > 1){
							var type = tiles_t[ind];
							var diff = type - ptype;
							
							if(diff != 0){
								tiles_d[ind] = 0;
							}
						}
						
						tiles[ind]   = pcount;
						tiles_t[ind] = ptype;
					}
				}
			}
		}
	}
}