audio_group_stop_all(ag_ambient);

global.p_maxhp = global.ds_char_stat_grid[# global.char, 0];
global.p_hp = global.ds_char_stat_grid[# global.char, 0];
global.p_atk = global.ds_char_stat_grid[# global.char, 1];
global.p_def = global.ds_char_stat_grid[# global.char, 2];
global.p_satk = global.ds_char_stat_grid[# global.char, 3];
global.p_sdef = global.ds_char_stat_grid[# global.char, 4];
global.p_spd = global.ds_char_stat_grid[# global.char, 5];

room_goto(rm_lvl_editor);