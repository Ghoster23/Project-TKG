/// @description Initialise the enemy
event_inherited();
image_speed = 1.5;

state = 4;

offset = true;
offs   = 24;

sprs[0] = spr_bloob_r;
sprs[1] = spr_bloob_u;
sprs[2] = spr_bloob_l;
sprs[3] = spr_bloob_d;

//Stats
stat[stats.mhp]  = 16;
stat[stats.hp]   = 16;
stat[stats.atk]  = 10;
stat[stats.def]  = 10;
stat[stats.satk] =  2;
stat[stats.sdef] =  2;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

damage = 5;

///Enemy unique
//Travel
los = false;

ph_state = 0;
ph_x = 0;
ph_y = 0;

fall_state = 0;

ach_dir = 0;
ach_w = noone;
ach_w_ = noone;
ach_dis = 0;

///Pause
scr_pausable_init(6);