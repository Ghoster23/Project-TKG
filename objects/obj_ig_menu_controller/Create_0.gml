/// @description In-Game Menu
scr_unique_inst();
state = "closed";
check = true;
m = display_get_gui_width() / global.roomwd;
box_wd = 4;
alpha = 0;
stats[0] = global.p_maxhp;
stats[1] = global.p_atk;
stats[2] = global.p_def;
stats[3] = global.p_satk;
stats[4] = global.p_sdef;
stats[5] = global.p_spd;