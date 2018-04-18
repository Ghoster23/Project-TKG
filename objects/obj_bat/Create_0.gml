/// @description Initialise the enemy
event_inherited();
image_speed=1.5;

offset = true;
offs   = 48;

//Stats
e_stats[stats.mhp]  =  8;
e_stats[stats.hp]   =  8;
e_stats[stats.atk]  = 10;
e_stats[stats.def]  =  0;
e_stats[stats.satk] =  2;
e_stats[stats.sdef] =  2;
e_stats[stats.spd]  =  3;

prev_e_hp = e_stats[stats.hp];

///Enemy unique
//Dash
dash    = false;
dash_cd = false;
em = part_emitter_create(global.ps_if);

///Pause
for(i = 0; i < 8; i++){
	alarms[i] = -1;
}