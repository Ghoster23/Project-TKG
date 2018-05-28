/// @description Inicialize the enemy
event_inherited();
image_speed = 0;

//Stats
stat[stats.mhp]  =	5;
stat[stats.hp]   =	5;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

//sprites
skeli_right_walk= spr_skeli_right
skeli_up_walk   = spr_skeli_up;
skeli_down_walk = spr_skeli_down;
skeli_pophead   = spr_skeli_pophead;
skeli_pickup    = spr_skeli_pickup;
skeli_aim       = spr_skeli_aim; 

///Enemy unique

state = "chase";

//create head

head = instance_create_layer(x,y,layer,obj_skeli_head);
head.owner = id;
//times 
poptime = 0.6*room_speed;
aimtime = 0.8*room_speed;
waittime = 0.5*room_speed;

skullt=noone;

scr_pausable_init(10);
