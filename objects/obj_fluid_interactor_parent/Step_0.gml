if(not global.pause and on){
	var fl_tiles = collision_rectangle_list( x, y, x+sprite_width, y+sprite_height, obj_fluid_tile, true, false);
			
	if(fl_tiles != noone){
		var len = ds_list_size(fl_tiles);
		
		var flx  = x;
		var fly  = y;
		var flfx = x + sprite_width;
		var flfy = y + sprite_height;
		var val  = value;
		
		for(var k = 0; k < len; k++){
			var inst = fl_tiles[| k];
			
			with(inst){		
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
						if(place_meeting(ox + i * cell_size, 
										 oy + j * cell_size, other)){
							tiles[i * grid_size + j] = val;
					
							active = true;
						}
					}
				}
			}
		}
		
		ds_list_destroy(fl_tiles);
	}
}