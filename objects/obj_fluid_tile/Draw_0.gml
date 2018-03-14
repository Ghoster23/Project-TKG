if(active && global.check == 1){
	active = false;
	
	surface_set_target(global.fluid_surface);
	
	for(var i = 0; i < grid_size; i++){
		for(var j = 0; j < grid_size; j++){
			var ind = i * grid_size + j;
			var val = tiles[ind];
					
			if(val mod 30 > 0){
				active = true;
				
				//Ticks
				if not global.pause{
					val -= 0.4;
				}
				
				if(global.current_column == rx && global.current_row == ry){
					//Opacity
					op = ln(val mod 30) * 0.05 + 0.65;
				
					draw_sprite_ext(spr_pixel, 0,
								ox + i * cell_size + 2,
								oy + j * cell_size + 2,
								cell_size,   cell_size,
								0, colors[val div 30], op);
				}
				
				tiles[ind] = val;
				
			}else {
				tiles[ind] = 0;
				
			}
		}
	}
	
	surface_reset_target();
}