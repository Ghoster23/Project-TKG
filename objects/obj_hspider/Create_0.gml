/// @description Inicialize the enemy
event_inherited();
image_speed = 0;

//Stats
e_stats[stats.mhp]  = 20;
e_stats[stats.hp]   = 20;
e_stats[stats.atk]  =  5;
e_stats[stats.def]  =  1;
e_stats[stats.satk] =  5;
e_stats[stats.sdef] =  5;
e_stats[stats.spd]  =  3;

prev_e_hp = e_stats[stats.hp];

///Enemy unique
//Has moved
moved = false;

//times
move_time  = 0.7;
state_time = 1.5;
hide_time  = 0.5;

for(i = 0; i < 6; i += 1){	
	alarms[i] = -1;
}