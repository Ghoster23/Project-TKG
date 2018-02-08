/// @description Initiate Variables
head   = instance_create_layer(x,y-3,layer,     obj_head);
head.sprite_index  = head_spr;

hands  = instance_create_layer(x,  y,layer,    obj_hands);
hands.sprite_index = hands_spr;

feet   = instance_create_layer(x,  y,layer,     obj_feet);
feet.sprite_index  = feet_spr;

if(global.char == 0){
	weapon = instance_create_layer(x,  y,layer,global.weapon);
}

roll   = obj_roll;

event_inherited();

scr_get_input();

state = scr_move_state;

hspd  = 0;
vspd  = 0;

len   = 0;

xaxis = 0;
yaxis = 0;

dir   = 0;

//Appearence
image_speed =   0;
spr_side    =   1;
head_offset =   0;
rotation    =   0;
is          = 0.5;

spr_body = body_sprs[3];

//Pause
for(i = 0; i < 3; i++){
	alarms[i] = -1;
}

//Statuses
status_check = true;

scr_player_status_init();

//Body particle emitter
global.body_em = part_emitter_create(global.ps_if);
part_emitter_region(global.ps_if,global.body_em,x,x,y,y,pt_shape_circle,ps_distr_gaussian);