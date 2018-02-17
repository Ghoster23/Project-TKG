/// @description In-Game Menu
scr_unique_inst();
state = "generation";
check = true;
m = display_get_gui_width() / global.roomwd;
box_wd = 0;
alpha  = 0;
stats[0] = global.maxhp;
stats[1] = global.atk;
stats[2] = global.def;
stats[3] = global.satk;
stats[4] = global.p_sdef;
stats[5] = global.spd;

mousex = 0;
mousey = 0;