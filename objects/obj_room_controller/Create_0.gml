scr_unique_inst();

global.lock   = false;
global.n_room = false;

enemy      = obj_enemy_parent;
enemy_list = 0;

global.act_enemy_list = ds_list_create();

once = false;

//Previous room
pr_row    = global.current_row;
pr_column = global.current_column;

path[0] = 0;

global.room_change = true;

state = 0;