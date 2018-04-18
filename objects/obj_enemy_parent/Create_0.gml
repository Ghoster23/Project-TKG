/// @description inicialise the Enemy
event_inherited();

visible            = false;
phy_fixed_rotation = true;
solid              = false;

//Pause
prev_image_speed = 0;
prev_rotation    = 0;
alarm_count      = 0;

//Get damaged
flash     = false;
damaged   = false;
prev_e_hp = 10;

//Activation
path    = 0;
go      = false;
start   = false;

//Stats
e_stats[stats.mhp]  = 10;
e_stats[stats.hp]   = 10;
e_stats[stats.atk]  =  5;
e_stats[stats.def]  =  5;
e_stats[stats.satk] =  5;
e_stats[stats.sdef] =  5;
e_stats[stats.spd]  =  3;

//States
state        =     0;
state_change = false;
prev_state   =     0;
atk_cd       = false;
ini_point_x  =     x;
ini_point_y  =     y;

///Directions
dir_change = true;
i_dir      =    0;

///Distance
dis = 0;