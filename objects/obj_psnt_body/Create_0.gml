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
weapon = scr_create_weapon(x,y,layer,obj_e_melee,id);
weapon.skin_color = skin_color;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  3;
stat[stats.sdef] =  3;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

d = 0;
d_ = 0;

for(i = 0; i < 7; i += 1){	
	alarms[i] = -1;
}