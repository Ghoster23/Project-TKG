if(not global.pause and on){
	var xx = (x - sprite_xoffset);
	var yy = (y - sprite_yoffset);
	xx = xx - xx mod cell_size;
	yy = yy - yy mod cell_size;
	
	var tl_cnt = collision_rectangle_list(               xx,                 yy, 
										  xx + sprite_width, yy + sprite_height,
										  obj_fluid_tile, true, false, tiles, false);
	
	repeat tl_cnt {
		var tl = tiles[| 0];
		tl.act = true;
		ds_list_delete(tiles, tl);
		
		var dx = (xx - tl.flx) div cell_size;
		
		if(dx >= 0){
			var bxs =   0;
			var txs =  dx;
		}else {
			var bxs = -dx;
			var txs =   0;
		}
		
		var xl = min(tl.h_cells - txs, h_cells - bxs);
		
		var dy = (yy - tl.fly) div cell_size;
		
		if(dy >= 0){
			var bys =   0;
			var tys =  dy;
		}else {
			var bys = -dy;
			var tys =   0;
		}
		
		var yl = min(tl.v_cells - tys, v_cells - bys);
		
		for(var i = 0; i < yl; i++){
			var col_line = col_grid[bys + i];
			var line  = tl.tiles[tys + i];
			var linet = tl.tiles_t[tys + i];
			
			for(var j = 0; j < xl; j++){
				if(col_line[bxs + j]){
					line[ txs + j]  = scount;
					linet[ txs + j] = stype;
				}
			}
			
			tl.tiles[tys + i]   = line;
			tl.tiles_t[tys + i] = linet;
		}
	}
}