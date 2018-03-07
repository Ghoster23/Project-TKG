if(active){
	active = false;
	surface_set_target(global.fluid_surface);
	
	for(var i = 1; i < grid_size - 1; i++){
		for(var j = 1; j < grid_size - 1; j++){
			var val = tiles[i,j];
					
			if val > 0{
				active = true;
				
				//What fluid is it
				if val <= 60 {
					color = c_olive;
				
				}
				
				if val <= 30 {
					color = c_lime;
				
				}
				
				//Ticks
				if not global.pause{
					val -= 0.1;
				
				}
		
				//Opacity
				//op = (val mod 30) / 60;
		
				//draw_set_alpha(op);
				
				draw_sprite_ext(spr_creep_circle, 0, ox + i * cell_size, oy + j * cell_size, 1, 1, 0, color, 1);
				
				tiles[i,j] = val;
			}
			
			for(var k = 0; k < 2; k++){
				if(k * 30 + 0.1  == val){
					tiles[i,j] = 0;
				}
			}
		}
	}
	
	surface_reset_target();
}