/// @description In-Game Menu
scr_unique_inst();
state = "generation";
check = true;
m = display_get_gui_width() / global.roomwd;
box_wd = 0;
alpha  = 0;
stats[0] = global.p_stats[stats.mhp];
stats[1] = global.p_stats[stats.atk];
stats[2] = global.p_stats[stats.def];
stats[3] = global.p_stats[stats.satk];
stats[4] = global.p_stats[stats.sdef];
stats[5] = global.p_stats[stats.spd];

mousex = 0;
mousey = 0;