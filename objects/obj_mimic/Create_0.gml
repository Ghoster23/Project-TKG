/// @description Inicialise the enemy
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
stat[stats.mhp]  =  10;
stat[stats.hp]   =  10;
stat[stats.atk]  =   5;
stat[stats.satk] =   5;
stat[stats.def]  =   5;
stat[stats.sdef] =   5;
stat[stats.spd]  =   3;

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

image_speed = 0;

//Stats
stat[stats.mhp]  = 10;
stat[stats.hp]   = 10;
stat[stats.atk]  = 10;
stat[stats.satk] =  0;
stat[stats.def]  =  3;
stat[stats.sdef] =  5;
stat[stats.spd]  =  0;

///Enemy unique
//Side 2 Side
a = 0;

//Tell
interval = false;
blink    = false;

///Pause
for(i = 0; i < 6; i++){
	alarms[i] = -1;
}