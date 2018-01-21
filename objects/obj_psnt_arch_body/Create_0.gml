/// @description Inicialise the enemy
event_inherited();

with head{
	body = instance_nearest(x,y,obj_psnt_arch_body);
	//get vars from body
	face = body.face;
	hair = body.hair;
	skin_color = body.skin_color;
	hair_color = body.hair_color;
	
	image_index = skin_color;
	
}

draw_script = scr_psnt_draw;

image_speed = 0.4;

cr_cd = false;
cd_arrow = false;
stun = false;

shoot = false;
tell = 0;

//create weapon
weapon = instance_create_layer(x,y,layer,obj_e_bow);
weapon.skin_color = skin_color;

//Stats
e_mhp  = 20;
e_hp   = 20;
e_atk  =  5;
e_satk =  1;
e_def  =  2;
e_sdef =  2;
e_spd  =  3;

if instance_exists(global.body){
	dir = point_direction(x,y,global.body.x,global.body.y);
}

d = 0;
d_ = 0;
offset_x = 0;
offset_y = 0;

///Pause
for(i = 0; i < 7; i += 1){	
	alarms[i] = -1;
}