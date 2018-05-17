if(not global.pause){
	image_xscale += 0.05;
	image_yscale += 0.05;
	
	var fl_tiles = collision_rectangle_list( x-(sprite_width/(1-image_xscale)/2), y-(sprite_height/(1-image_yscale)/2), 
											 x+sprite_width*image_xscale, y+sprite_height*image_yscale, 
											 obj_fluid_tile, true, false);
	
	if(fl_tiles != noone){
		var len = ds_list_size(fl_tiles);
		
		for(var k = 0; k < len; k++){
			var inst = fl_tiles[| k];
			
			if(inst.active){
				var vals  = values;
				var val   = value;
				var mtype = value div 30;
				var p     = paint;
	
				with inst {
					sprite_index = spr_pixel;
	
					for(var i = 0; i < grid_size; i++){
						for(var j = 0; j < grid_size; j++){
							if(place_meeting(x + cell_size * (i + 0.5),
												y + cell_size * (j + 0.5), other)){
							
								var cval  = tiles[i * grid_size + j];
								var count = cval mod 30;
								
								if(count > 1){
									var type  = cval div 30;
									var diff  = type - vals[type];
									
									if(diff){
										tiles[i * grid_size + j] = cval - 29 * diff;
										active = true;
										
									}else {
										tiles[i * grid_size + j] = val;
										active = true;
									}
									
								}else if(p){
									tiles[i * grid_size + j] = val;
									active = true;
								}
							}
						}
					}
					
					sprite_index = spr_slm_creep1;
				}
			}
		}
		
		ds_list_destroy(fl_tiles);
	}
	
	if(phy_position_x div global.roomwd != global.current_column ||
	   phy_position_y div global.roomhg != global.current_row){
		instance_destroy();
	}
}