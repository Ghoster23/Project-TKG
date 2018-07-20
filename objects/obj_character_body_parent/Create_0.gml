/// @description Initiate Variables
event_inherited();

hands  = instance_create_layer(x,  y,layer,    obj_hands);
hands.sprite_index = hands_spr;

feet = instance_create_layer(x, y, layer, obj_feet);
feet.sprite_index = feet_spr;

voice =noone;

weapon = noone;

if(global.weapon != -1){
	weapon = scr_create_weapon(x,y,layer,global.weapon,id);
}

visible            = true;
phy_fixed_rotation = true;
solid              = false;

//Pause
prev_rotation    = 0;
scr_pausable_init(5);


//Got damaged
flash     = false;
damaged   = false;
prev_hp   = 10;
dead      = false;

//Move
path = 0;

//Stats
array_copy(stat,0,global.p_stats,0,stats.count);

//Statuses
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

//Movement
hspd  = 0;
vspd  = 0;
dash_mult = 2;
dash_time = 1/3;
dash_cd   = 2/3;
dash_move = false;

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

//Body particle emitter
global.body_em = part_emitter_create(global.ps_if);
part_emitter_region(global.ps_if,global.body_em,x,x,y,y,pt_shape_circle,ps_distr_gaussian);