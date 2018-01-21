/// @description Inicialise the enemy
event_inherited();

image_speed = 0.2;
image_alpha = 0.7;

//Stats
e_mhp  =  20;
e_hp   =  20;
e_atk  =  10;
e_satk =   0;
e_def  =   2;
e_sdef =   2;
e_spd  = 1.5;

//Pause
for(i = 0; i < 6; i++){
	alarms[i] = -1;
}