/// @description Create grid and variables
scr_unique_inst();

pr_type = 0;
type = 0;
val = 0;

if room == rm_level {
	global.fluid_grid = ds_grid_create(global.roomwd div 4,global.roomhg div 4);
	
}else {
	global.fluid_grid = ds_grid_create(room_width div 4, room_height div 4);
	
}

alarms[0] = -1;
prev_image_speed = 0;