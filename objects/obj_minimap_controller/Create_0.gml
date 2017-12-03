/// @description Initialize vars
scr_unique_inst();

//Current room
global.current_row = 4;
global.current_column = 4;
current_room = [global.ds_roomgrid[# 0, 36],global.ds_roomgrid[# 1, 36],global.ds_roomgrid[# 2, 36]];

mm_os_show = true;