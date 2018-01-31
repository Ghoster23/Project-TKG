if(active){
	active = false;
	
	for(var i = 1; i < grid_size - 1; i++){
		for(var j = 1; j < grid_size - 1; j++){
			var val = tiles[i,j];
					
			if val > 0{
				active = true;
				
				//What fluid is it
				if val <= 60 {
					sprite = spr_oil;
				
				}
				
				if val <= 30 {
					sprite = spr_slm_creep;
				
				}
				
				//Ticks
				if not global.pause{
					val -= 0.1;
				
				}
		
				//Opacity
				op = (val mod 30) / 60;
		
				draw_set_alpha(op);
				var img = scr_fluid_tile_v21( i, j, val div 30);
				
				draw_sprite_ext(sprite, img, x + i * cell_size, y + j * cell_size,1,1,0,c_white,op);
			
				draw_set_alpha(1);
				
				tiles[i,j] = val;
			}
			
			for(var k = 0; k < 2; k++){
				if(k * 30 + 0.1  == val){
					tiles[i,j] = 0;
				}
			}
		}
	}
}