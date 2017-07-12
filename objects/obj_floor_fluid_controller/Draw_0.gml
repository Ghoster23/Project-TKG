/// @description Insert description here
for(i = 0; i < room_width div 8; i++){
	for(j = 0; j < room_height div 8; j++){
		val = ds_grid_get(global.fluid_grid,i,j);
		
		//What fluid is it
		if val <= 30{
			draw_set_color(c_lime);
		}else if val <= 60{
			draw_set_color(c_aqua);
		}else if val >= 90{
			draw_set_color(c_red);
		}
		
		//Ticks
		if not global.pause {
			val -= 0.1;
		}
		
		//Opacity
		op = (val mod 30) / 30 - 10;
		
		if val > 0{
			draw_set_alpha(op);
			draw_rectangle(i*8,j*8,(i+1)*8,(j+1)*8,false);
			
			ds_grid_set(global.fluid_grid,i,j,val);
		
		}	
	}
}
/*
draw_set_color(c_red);

for(i = 0; i < room_width; i += 8){
	draw_line(i,0,i,room_height);
}
for(i = 0; i < room_height; i += 8){
	draw_line(i,0,i,room_width);
}
*/
draw_set_alpha(1);