instance_create_layer(x,y-3,obj_body.layer,obj_head);

instance_create_layer(x,y,obj_body.layer,obj_sword);

///set a bunch of stuff
event_inherited();
scr_get_input();
state = scr_move_state;
spd = 4;
hspd = 0;
vspd = 0;
len = 0;
xaxis = 0;
yaxis = 0;
dir = 0;
image_speed=0;
spr_side=1;

spr_body = global.char_bsprs[global.char,3]

i_cd = false;


for(i = 0; i < 2; i++){
	alarms[i] = -1;
}