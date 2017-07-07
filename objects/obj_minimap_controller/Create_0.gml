/// @description Initialize vars
//Current room
global.current_row = 4;
global.current_column = 4;
current_room = [global.ds_roomgrid[# 0, 0],global.ds_roomgrid[# 1, 0],global.ds_roomgrid[# 2, 0]];

//Previous room
pr_row = global.current_row;
pr_column = global.current_column;
