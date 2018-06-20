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
prev_hp = 10;
dead      = false;

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
stat[stats.arm]  =  0;
stat[stats.luck] =  0;

//Modifiers
modf[stats.mhp]  = 0;
modf[stats.hp]   = 0;
modf[stats.atk]  = 0;
modf[stats.def]  = 0;
modf[stats.satk] = 0;
modf[stats.sdef] = 0;
modf[stats.spd]  = 0;
modf[stats.arm]  =  0;
modf[stats.luck] =  0;

//Contact Damage
damage = 0;
divi   = stats.def;

kb_amount = 0;

//Statuses
status_list  = ds_list_create();
status_count = 0;
alarm[1]     = 0.5 * room_speed;

stuck  = false;
inv    = false;
immune = false;
innoc  = false;
ohko   = false;

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