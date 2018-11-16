///@description Initializes the variables for a fluid painter
///@param count
///@param type
///@param on
///@param visible
{
scount  = argument0;
stype   = argument1;
on      = argument2;
visible = argument3;

tiles = ds_list_create();

cell_size = 32 div global.fluid_detail;

h_cells = sprite_width  div cell_size;
v_cells = sprite_height div cell_size;

if(argument_count == 5){
	col_grid = argument[4];
}else {
	scr_fluid_make_col_grid();
}
}