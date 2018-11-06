if(not global.pause and on){
	var xx = (x - sprite_xoffset);
	var yy = (y - sprite_yoffset);
	
	var vals   = values;
	var mcount = scount;
	var mtype  = stype;
	var p      = paint;
	
	var tl_cnt = collision_rectangle_list(               xx,                 yy, 
										  xx + sprite_width, yy + sprite_height,
										  obj_fluid_tile, true, false, tiles, false);
	
	xx = (xx - xx mod cell_size) div cell_size;
	yy = (yy - yy mod cell_size) div cell_size;
	
	repeat tl_cnt {
		var tl = tiles[| 0];
		tl.act = true;
		ds_list_delete(tiles, 0);
		
		var bl_cnt = 0;
		
		#region xx
		var dx = xx - tl.flx;
		
		if(dx >= 0){
			var bxs =   0;
			var txs =  dx;
		}else {
			var bxs = -dx;
			var txs =   0;
		}
		
		var xl = min(tl.h_cells - txs, h_cells - bxs);
		#endregion
		
		#region yy
		var dy = yy - tl.fly;
		
		if(dy >= 0){
			var bys =   0;
			var tys =  dy;
		}else {
			var bys = -dy;
			var tys =   0;
		}
		
		var yl = min(tl.v_cells - tys, v_cells - bys);
		#endregion
		
		for(var i = 0; i < yl; i++){
			var col_line = col_grid[bys + i];
			
			for(var j = 0; j < xl; j++){
				if(col_line[bxs + j]){
					with tl {
						var ind = (tys + i) * h_cells + (txs + j);
						
						var count = tiles[ind];
						
						if(count > 1){
							var type = tiles_t[ind];
							var diff = type - vals[type];
							
							if(diff != 0 || type == mtype){
								tiles[ind]   = mcount;
								tiles_t[ind] = type - diff;
								tiles_d[ind] = 0;
							}
						}
						
						if(tiles_t[ind] == mtype){ bl_cnt++; }
					}
				}
			}
		}
		
		if(bl_cnt/tl.cell_count >= 0.66 and not place_meeting(tl.x + 16,tl.y + 16, obj_ice_cube)){
			instance_create_layer( tl.x, tl.y, "Instances", obj_ice_cube);
		}
	}
}