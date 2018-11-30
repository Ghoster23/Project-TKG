/// @description Initiate Variables
event_inherited();

#region Hands
hands = instance_create_layer(x, y, layer, obj_hands);
hands.body = id;
hands.hand = hand;
#endregion

#region Floor interactor
flr_intr = instance_create_layer(x, y, layer, obj_entity_floor_interactor);
flr_intr.owner = id;
#endregion

#region Weapon
weapon = noone;
weapon = scr_create_tw(global.weapon,-1);
#endregion

visible            = true;
phy_fixed_rotation = true;
solid              = false;

//Pause
prev_rotation    = 0;
scr_pausable_init(5);

//Move
path = 0;

//Stats
array_copy(stat,0,global.p_stats,0,stats.count);

#region Statuses
event_perform(ev_alarm,3);

stuck  = false;
inv    = false;
immune = false;
innoc  = false;
ohko   = false;
flight = 0;
#endregion

#region States
state        = 4;
prev_state   = 0;
state_change = false;
prev_hp      = stat[stats.hp];

///Got damaged
flash   = false;
damaged = false;
dead    = false;
#endregion

#region Movement
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
#endregion

#region Appearence
image_speed =   0.6;
spr_side    =   1;
rotation    =   0;
is          = 0.4;

spr_body = body_sprs[3];
#endregion

shout = false;

voice = noone;

parts = [hands,flr_intr,weapon];

//Body particle emitter
global.body_em = part_emitter_create(global.ps_if);
part_emitter_region(global.ps_if,global.body_em,x,x,y,y,pt_shape_circle,ps_distr_gaussian);