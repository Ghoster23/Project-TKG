///@param width
///@param height
///@param file_start_line
///@param grid_start_line
///@param file_name
{
var wd = argument0;
var hg = argument1;

var sx = argument2;
var sy = argument3;

var fl_name = argument4;

var grid = ds_grid_create(wd,hg);
grid = csv_text_to_grid(fl_name,grid,hg,wd,sx,sy);
//scr_debug_message_ds_grid(grid);
grid = ds_grid_parse_content(grid);
//scr_debug_message_ds_grid(grid);

return grid;
}