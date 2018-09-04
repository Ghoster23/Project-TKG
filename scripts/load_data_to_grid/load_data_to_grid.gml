///@param width
///@param height
///@param first_collumn
///@param first_row
///@param file_name
{
var wd = argument0;
var hg = argument1;

var sx = argument2;
var sy = argument3;

var fl = argument4;

var grid = ds_grid_create(wd,hg);
grid = scr_csv2dsgrid(fl,grid,hg,wd,sx,sy);
grid = ds_grid_parse_content(grid);
scr_debug_message_ds_grid(grid);

return grid;
}