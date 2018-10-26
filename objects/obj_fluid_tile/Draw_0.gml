if(active && global.check == 1){
	active = false;
	
	surface_set_target(global.fluid_surface);
	gpu_set_blendenable(false);
	
	for(var i = 0; i < grid_size; i++){
		for(var j = 0; j < grid_size; j++){
			var ind   = i * grid_size + j;
			var count = tiles[ind];
			var type  = tiles_t[ind];
					
			if(count > 1){
				active = true;
				
				//Ticks
				if(not global.pause){
					count--;
				}
				
				if(global.current_col == rx && global.current_row == ry){
					//Opacity
					if(type <= 1){
						op = ln(count) * 0.05 + 0.25;
					}else {
						op = ln(count) * 0.05 + 0.55;
					}
				
					/*draw_sprite_ext(spr_pixel, 0,
								ox + i * cell_size + 2,
								oy + j * cell_size + 2,
								cell_size,   cell_size,
								0, colors[type], op);*/
				}
				
				tiles[ind] = count;
				
			}else {
				tiles[ind]   = 0;
				tiles_t[ind] = -1;
				
			}
		}
	}
	
	gpu_set_blendenable(true);
	surface_reset_target();
}