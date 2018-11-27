event_inherited();

//Activation
path    = 0;
go      = false;
start   = false;

visible            = false;
phy_fixed_rotation = true;
solid              = false;

offset = true;
offs = sprite_height - sprite_yoffset;

parts = [];

//Pause
prev_image_speed = 0;
prev_rotation    = 0;
alarm_count      = 0;

//Get damaged
flash     = false;
damaged   = false;
prev_hp   =    10;
dead      = false;

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
modf[stats.mhp]  =  0;
modf[stats.hp]   =  0;
modf[stats.atk]  =  0;
modf[stats.def]  =  0;
modf[stats.satk] =  0;
modf[stats.sdef] =  0;
modf[stats.spd]  =  0;
modf[stats.arm]  =  0;
modf[stats.luck] =  0;

//Statuses
status_list  = ds_list_create();
status_count = 0;

stuck  = false;
stun   = false;
inv    = false;
immune = false;
innoc  = false;
ohko   = false;

type = -1;

mp_grid = -1;
mp_path = -1;