/// @description Inicialize the enemy
event_inherited();
image_speed = 0;

//Stats
e_mhp  = 20;
e_hp   = 20;
e_atk  =  5;
e_satk =  0;
e_def  =  5;
e_sdef =  5;
e_spd  =  3;

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