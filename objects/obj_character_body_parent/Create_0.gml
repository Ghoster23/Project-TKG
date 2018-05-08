/// @description Initiate Variables
hands  = instance_create_layer(x,  y,layer,    obj_hands);
hands.sprite_index = hands_spr;

feet   = instance_create_layer(x,  y,layer,     obj_feet);
feet.sprite_index  = feet_spr;

weapon = noone;
if(global.weapon != -1){
	weapon = instance_create_layer(x,y,layer,global.weapon);
	weapon.owner = id;
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
prev_e_hp = 10;

//Move
path = 0;

dash_cd = false;

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

hurt   = false;
stuck  = false;
inv    = false;
immune = false;

//States
state        = 0;
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

event_inherited();

//Body particle emitter
global.body_em = part_emitter_create(global.ps_if);
part_emitter_region(global.ps_if,global.body_em,x,x,y,y,pt_shape_circle,ps_distr_gaussian);