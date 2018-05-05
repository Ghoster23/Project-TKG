if(active && global.check == 1){
	active = false;
	
	surface_set_target(global.fluid_surface);
	gpu_set_blendenable(false);
	
	for(var i = 0; i < grid_size; i++){
		for(var j = 0; j < grid_size; j++){
			var ind   = i * grid_size + j;
			var val   = tiles[ind];
			var type  = val div 30;
			var count = val mod 30;
					
			if(count > 0){
				active = true;
				
				//Ticks
				if(not global.pause){
					if(type != 3){
						val -= 0.5;
					}else {
						val -= 0.1;
					}
				}
				
				if(global.current_column == rx && global.current_row == ry){
					//Opacity
					op = ln(val) * 0.05 + 0.25;
				
					draw_sprite_ext(spr_pixel, 0,
								ox + i * cell_size + 2,
								oy + j * cell_size + 2,
								cell_size,   cell_size,
								0, colors[type], op);
				}
				
				tiles[ind] = val;
				
			}else if(count <= 0){
				tiles[ind] = 0;
				
			}
		}
	}
	
	gpu_set_blendenable(true);
	surface_reset_target();
}