///@description Initializes variables for a fluid converter
///@param count
///@param type
///@param conversion_array
///@param paint
///@param on
///@param visible
{
scount  = argument0;
stype   = argument1;
values  = argument2;
paint   = argument3;
on      = argument4;
visible = argument5;

tiles = ds_list_create();

cell_size = 32 div global.fluid_detail;

h_cells = sprite_width  div cell_size;
v_cells = sprite_height div cell_size;

if(argument_count == 7){
	col_grid = argument[6];
}else {
	scr_fluid_make_col_grid();
}
}