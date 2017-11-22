/// @description Create grid and variables
scr_unique_inst();

pr_type = 0;
type = 0;
val = 0;

if room == rm_level {
	width = global.roomwd div 4;
	height = global.roomhg div 4;
	
}else {
	width = room_width div 4;
	height = room_height div 4;
	
}

for(i = 0; i < height; i++){
	for(j = 0; j < width; j++){
		global.fluid_grid[i,j] = 0;
	}
}