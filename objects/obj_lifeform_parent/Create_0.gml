/// @description inicialise the LIFE FORM
event_inherited();

visible            = true;
phy_fixed_rotation = true;
solid              = false;

//Pause
prev_image_speed = 0;
prev_rotation    = 0;
alarm_count      = 0;

//Got damaged
flash     = false;
damaged   = false;
prev_e_hp = 10;

//Move
path = 0;

//Stats
stat[stats.mhp]  = 10;
stat[stats.hp]   = 10;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  3;

//Statuses
status_list  = ds_list_create();
status_count = 0;

hurt  = false;
stuck = false;

//States
state        = 0;
prev_state   = 0;
state_change = false;
prev_hp = stat[stats.hp];