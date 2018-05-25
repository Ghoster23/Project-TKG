if(not global.pause and on){
	var fl_tiles = collision_rectangle_list( x, y, 
											 x+sprite_width*image_xscale, y+sprite_height*image_yscale, 
											 obj_fluid_tile, true, false);
	
	if(fl_tiles != noone){
		var len = ds_list_size(fl_tiles);
		
		var flx   = x;
		var fly   = y;
		var flfx  = x + sprite_width;
		var flfy  = y + sprite_height;
		
		var vals   = values;
		var mcount = scount;
		var mtype  = stype;
		var bl     = blocks;
		
		for(var k = 0; k < len; k++){
			var inst = fl_tiles[| k];
			
			with(inst){
				var bl_cnt = 0;
				sprite_index = spr_pixel;
				
				//Left limit
				if(flx <= x){
					var sx = 0;	
				}else {
					var sx = (flx - x) div cell_size;		
				}
		
				//Right limit
				if(flfx < x + 32){
					var fx = (flfx - x) div cell_size;
				}else {
					var fx = grid_size;
				}
		
				//Upper limit
				if(fly <= y){
					var sy = 0;	
				}else {
					var sy = (fly - y) div cell_size;	
				}
		
				//Lower limit
				if(flfy < y + 32){
					var fy = (flfy - y) div cell_size;
				}else {
					var fy = grid_size;
				}
				
				for(var i = sx; i < fx; i++){
					for(var j = sy; j < fy; j++){
						if(place_meeting(x + cell_size * (i + 0.5),
									        y + cell_size * (j + 0.5), other)){
							
							var count = tiles[i * grid_size + j];
								
							if(count > 1){
								var type = tiles_t[i * grid_size + j];
								var diff = type - vals[type];
								
								if(diff != 0 || type == mtype){					
									tiles[i * grid_size + j]   = mcount;
									tiles_t[i * grid_size + j] = mtype;
									bl_cnt++;
								}
								
								active = true;	
							}
						}
					}
				}
				
				sprite_index = spr_slm_creep1;
				
				if(bl){
					if(bl_cnt/array_len >= 0.5 and not place_meeting(x,y,obj_solid_parent)){
						instance_create_layer(x+16,y+16,layer,obj_ice_cube);
					}
				}
			}
			
		}		
		
		ds_list_destroy(fl_tiles);
	}
}