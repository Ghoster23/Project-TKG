if(active && global.check == 1){
	active = false;
	
	surface_set_target(global.fluid_surface);
	
	for(var i = 1; i < grid_size - 1; i++){
		for(var j = 1; j < grid_size - 1; j++){
			var val = tiles[i,j];
					
			if val > 0{
				active = true;
				
				//Ticks
				if not global.pause{
					val -= 0.5;
				
				}
		
				//Opacity
				op = ln(val mod 30) * 0.05 + 0.75;
				
				//outline_start( 1, c_green, spr_creep_circle, 0, 4);
				//draw_sprite_ext(spr_creep_circle, 0, ox + i * cell_size, oy + j * cell_size, 1, 1, 0, color, 1);
				//draw_circle_color(ox + i * cell_size + 2, oy + j * cell_size + 2, 2, color, color, false);
				draw_sprite_ext(spr_pixel, 0, ox + i * cell_size + 2, oy + j * cell_size + 2, cell_size, cell_size, 0, colors[val div 30], op);
				//outline_end();
				
				tiles[i,j] = val;
			}
			
			for(var k = 0; k < 2; k++){
				if(k * 30 + 1  == val){
					tiles[i,j] = 0;
				}
			}
		}
	}
	
	surface_reset_target();
}