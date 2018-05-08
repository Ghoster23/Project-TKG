/// @description Inicialize the enemy
event_inherited();
image_speed = 0;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  3;

prev_e_hp = stat[stats.hp];

///Enemy unique
//Has moved
moved = false;

//times
move_time  = 0.7;
state_time = 1.5;
hide_time  = 0.5;

for(i = 0; i < 8; i += 1){	
	alarms[i] = -1;
}