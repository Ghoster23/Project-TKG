if(not global.pause and on){
	var xx = (x - sprite_xoffset);
	var yy = (y - sprite_yoffset);
	
	var vals   = values;
	var mcount = scount;
	var mtype  = stype;
	var p = paint;
	
	xx = xx div cell_size;
	yy = yy div cell_size;

	var flr = instance_place(x,y,obj_floor);

	if(flr != noone){
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
						
						var count = tiles[ind];
						
						if(count > 1){
							var type = tiles_t[ind];
							var diff = type - vals[type];
							
							if(diff != 0){
								tiles[ind]   = mcount;
								tiles_t[ind] = type - diff;
								tiles_d[ind] = 0;
							}else if(type == mtype){
								tiles[ind]   = mcount;
								tiles_t[ind] = mtype;
							}
						}else if(p){
							tiles[ind]   = mcount;
							tiles_t[ind] = mtype;
							tiles_d[ind] = 0;
						}
					}
				}
			}
		}
	}
}