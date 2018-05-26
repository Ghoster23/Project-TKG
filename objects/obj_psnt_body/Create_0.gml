/// @description Inicialise the enemy
event_inherited();

draw_script = scr_psnt_draw;

cd_swing = false;

swing = false;

xx  = x;
yy  = y;
pos = 1;

//create weapon
weapon = scr_create_weapon(x,y,layer,obj_melee,id);
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