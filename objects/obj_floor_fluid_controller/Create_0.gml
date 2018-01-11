/// @description Create grid and variables
scr_unique_inst();

pr_type = 0;
type = 0;
val = 0;
n_room = 0;

if room == rm_level {
	global.fluid_grid = ds_grid_create(global.roomwd div 4,global.roomhg div 4);
	
	x_cells = global.roomwd div 32 - 2;
	y_cells = global.roomhg div 32 - 4;
	
}else if room == rm_lvl_editor_test{
	global.fluid_grid = ds_grid_create((room_width - 64) div 4, (room_height - 4 * 32) div 4);
	
	x_cells = room_width  div 32 - 2;
	y_cells = room_height div 32 - 4;
	
}else {
	global.fluid_grid = ds_grid_create(room_width div 4, room_height div 4);
	
	x_cells = room_width  div 32;
	y_cells = room_height div 32;
	
}

gr_wd = ds_grid_width(global.fluid_grid);

ds_grid_set_region(global.fluid_grid,0,0,ds_grid_width(global.fluid_grid),ds_grid_height(global.fluid_grid),30);

show_debug_message(gr_wd);

for(var i = 0; i < y_cells; i++){
	for(var j = 0; j < x_cells; j++){
		active[j,i] = 0;
	}	
}

alarms[0] = -1;
alarms[1] = -1;
prev_image_speed = 0;