/// @description Inicialise the enemy
event_inherited();
image_speed = 0;

//Stats
e_mhp  = 10;
e_hp   = 10;
e_atk  = 10;
e_satk =  0;
e_def  =  3;
e_sdef =  5;
e_spd  =  0;

///Enemy unique
//Side 2 Side
a = 0;

//Tell
interval = false;
blink    = false;

///Pause
for(i = 0; i < 6; i++){
	alarms[i] = -1;
}