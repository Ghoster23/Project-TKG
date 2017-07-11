/// @description Create grid and path
global.ai_grid = mp_grid_create(0,0,room_width div 32,room_height div 32,32,32);

global.ai_path = path_add();

mp_grid_add_instances(global.ai_grid,obj_solid_parent,true);