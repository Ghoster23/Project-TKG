/// @description Initialize the enemy
event_inherited();

type = entity_type.monster;

phy_fixed_rotation = true;

image_speed = 0;

//Stats
stat[stats.mhp]  = 10;
stat[stats.hp]   = 10;
stat[stats.atk]  = 10;
stat[stats.satk] =  0;
stat[stats.def]  =  3;
stat[stats.sdef] =  5;
stat[stats.spd]  =  0;
prev_hp = stat[stats.mhp];

///Enemy unique
//Side 2 Side
a = 0;

//Interact
scr_interactable_init(40,18,8,0,-18);

//Tell
alarm[1] = 5 * room_speed;
blink    = false;

///Pause
scr_pausable_init(6);