/// @description Draw fluids
if room == rm_level {
	off_x = global.current_column * global.roomwd;
	off_y = global.current_row * global.roomhg;
	
}else {
	off_x = 0;
	off_y = 0;
	
}

for(i = 0; i < ds_grid_width(global.fluid_grid); i++){
	for(j = 0; j < ds_grid_height(global.fluid_grid); j++){
		var val = ds_grid_get(global.fluid_grid,i,j);
		
		//What fluid is it
		if val != 0{
			if val <= 30{
				draw_set_color(c_lime);
			}else if val <= 60{
				draw_set_color(c_aqua);
			}else if val >= 90{
				draw_set_color(c_red);
			}
		}
		
		//Ticks
		if not global.pause {
			val -= 0.1;
		}
		
		//Opacity
		op = (val mod 30 - 5) / 30;
		
		if val > 0{
			draw_set_alpha(op);
			draw_rectangle(off_x + i*8,off_y + j*8,off_x + (i+1)*8,off_y + (j+1)*8,false);
			
			ds_grid_set(global.fluid_grid,i,j,val);
		
		}	
	}
}

draw_set_color(c_purple);
draw_rectangle(obj_body.x-2, obj_body.y + 8, obj_body.x + 2, obj_body.y + 12,false);

/*
h = ds_grid_height(global.fluid_grid);

for(i = 0; i div 8 < ds_grid_width(global.fluid_grid); i += 8){
	draw_line(off_x + i,off_y,off_x + i, off_y + h);
}
*/

draw_set_alpha(1);