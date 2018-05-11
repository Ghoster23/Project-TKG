/// @description Initiate Variables
hands  = instance_create_layer(x,  y,layer,    obj_hands);
hands.sprite_index = hands_spr;

feet   = instance_create_layer(x,  y,layer,     obj_feet);
feet.sprite_index  = feet_spr;

weapon = noone;

if(global.weapon != -1){
	weapon = scr_create_weapon(x,y,layer,global.weapon,id);
}

visible            = true;
phy_fixed_rotation = true;
solid              = false;

//Pause
prev_image_speed = 0;
prev_rotation    = 0;

for(var i = 0; i < alarm_count; i++){
	alarms[i] = -1;
}

//Got damaged
flash     = false;
damaged   = false;
prev_hp   = 10;
dead      = false;

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
modf[stats.arm]  = 0;
modf[stats.luck] = 0;

//Statuses
status_list  = ds_list_create();
status_count = 0;
event_perform(ev_alarm,3);

stuck  = false;
inv    = false;
immune = false;
innoc  = false;
ohko   = false;
flight = 0;

//States
state        = 4;
prev_state   = 0;
state_change = false;
prev_hp      = stat[stats.hp];

scr_get_input();

//Movement
hspd  = 0;
vspd  = 0;

len   = 0;

xaxis = 0;
yaxis = 0;

dir   = 0;

//Appearence
image_speed =   1;
spr_side    =   1;
rotation    =   0;
is          = 0.4;
hs          = false;

spr_body = body_sprs[3];

shout = false;

event_inherited();

//Body particle emitter
global.body_em = part_emitter_create(global.ps_if);
part_emitter_region(global.ps_if,global.body_em,x,x,y,y,pt_shape_circle,ps_distr_gaussian);