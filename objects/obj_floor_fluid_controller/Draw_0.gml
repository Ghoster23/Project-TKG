/// @description Draw fluids
//if(not global.pause ){
var sprite;

if room == rm_level {
	off_x = global.current_column * global.roomwd + 32;
	off_y = global.current_row    * global.roomhg + 96;
	
	c_rm = global.current_row * 8 + global.current_column;
	
}else {
	off_x = 0;
	off_y = 0;
	c_rm = 0;
}

for(var k = 0; k < y_cells; k++){
	for(var l = 0; l < x_cells; l++){
		var x0 = l;
		var y0 = k;
		//show_debug_message("x0: " + string(x0) + " y0: " + string(y0));
	
		if(active[x0,y0] == 1){
			show_debug_message("Slime!");
		
			//draw_rectangle(global.roomwd * global.current_column + (x0 + 1) * 32, global.roomhg * global.current_row + (y0 + 3) * 32,
			//global.roomwd * global.current_column + (x0 + 2) * 32, global.roomhg * global.current_row + (y0 + 4) * 32,
			//false);
		
			for(var i = 0; i < 8; i++){
				for(var j = 0; j < 8; j++){
					var val = ds_grid_get( global.fluid_grid, x0 * 8 + j, y0 * 8 + i * gr_wd);
					
					show_debug_message(x0 * 8 + j);
					if val > 0{		
						//What fluid is it
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
						draw_sprite_ext(sprite,scr_fluid_tile( x0 * 8 + j, y0 * 8 + i * gr_wd), off_x + x0 * 32 + j * 4, off_y + y0 * 32 + i * 4,1,1,0,c_white,op);
			
						ds_grid_set( global.fluid_grid, x0 * 8 + j, y0 * 8 + i * gr_wd, val);
		
					}else if val < 0{
						ds_grid_set( global.fluid_grid, x0 * 8 + j, y0 * 8 + i * gr_wd, 0);
			
					}
				}
			}
		}
	}
}

draw_set_alpha(1);
//}
