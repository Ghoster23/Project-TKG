/// @description Inicialise the enemy
event_inherited();

with head{
	body = instance_nearest(x,y,obj_psnt_body);
	//get vars from body
	face = body.face;
	hair = body.hair;
	skin_color = body.skin_color;
	hair_color = body.hair_color;
	
	image_index = skin_color;
	
}

draw_script=scr_psnt_draw;

cd_swing = false;

swing = false;

xx = x;
yy = y;
pos = 1;
path = path_add();

//create weapon
weapon = instance_create_layer(x,y,layer,obj_e_melee);
weapon.skin_color = skin_color;

//Stats
e_mhp  = 20;
e_hp   = 20;
e_atk  =  5;
e_satk =  0;
e_def  =  3;
e_sdef =  3;
e_spd  =  3;

d = 0;
d_ = 0;

for(i = 0; i < 7; i += 1){	
	alarms[i] = -1;
}