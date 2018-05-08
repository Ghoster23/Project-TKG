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
stat[stats.mhp]  = 10;
stat[stats.hp]   = 10;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  3;

//Contact Damage
damage = 0;
mult   = stats.atk;
divi   = stats.def;
kb_amount = 0;

//Statuses
status_list  = ds_list_create();
status_count = 0;
alarm[1]     = 0.5 * room_speed;

stuck = false;

//States
state        =     0;
prev_state   =     0;
state_change = false;
atk_cd       = false;


ini_point_x  =     x;
ini_point_y  =     y;

///Directions
dir_change = true;
i_dir      =    0;

///Distance
dis = 0;