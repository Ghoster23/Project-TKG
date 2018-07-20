/// @description Initialise the enemy
event_inherited();
image_speed = 1.5;

offset = true;
offs   = 48;

//Stats
stat[stats.mhp]  =  8;
stat[stats.hp]   =  8;
stat[stats.atk]  = 10;
stat[stats.def]  =  1;
stat[stats.satk] =  2;
stat[stats.sdef] =  2;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

damage = 2;

///Enemy unique
//Dash
dash    = false;
dash_cd = false;
em      = part_emitter_create(global.ps_if);

///Pause
for(i = 0; i < 8; i++){
	alarms[i] = -1;
}