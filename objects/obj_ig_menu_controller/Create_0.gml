/// @description In-Game Menu
scr_unique_inst();

//Game pause
global.pause = false;

state = "generation"; //State to start in

check = true; //Check for a state change

m = display_get_gui_width() / global.roomwd; //Aspect ratio

box_wd = 0; //Animation
alpha  = 0;

//Player stats
stat[0] = global.p_stats[stats.mhp];
stat[1] = global.p_stats[stats.atk];
stat[2] = global.p_stats[stats.def];
stat[3] = global.p_stats[stats.satk];
stat[4] = global.p_stats[stats.sdef];
stat[5] = global.p_stats[stats.spd];

//Mouse position
mousex = 0;
mousey = 0;