audio_group_stop_all(ag_ambient);

global.maxhp = global.ds_char_stat_grid[# global.char, 0];
global.hp = global.ds_char_stat_grid[# global.char, 0];
global.atk = global.ds_char_stat_grid[# global.char, 1];
global.def = global.ds_char_stat_grid[# global.char, 2];
global.satk = global.ds_char_stat_grid[# global.char, 3];
global.sdef = global.ds_char_stat_grid[# global.char, 4];
global.spd = global.ds_char_stat_grid[# global.char, 5];

room_goto(rm_lvl_editor);