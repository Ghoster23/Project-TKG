/// @description Initialise the enemy
event_inherited();
image_speed=1.5;

offset = true;
offs   = 48;

//Stats
e_mhp  =  8;
e_hp   =  8;
e_atk  = 10;
e_satk =  0;
e_def  =  2;
e_sdef =  2;
e_spd  =  3;

///Enemy unique
//Dash
dash    = false;
dash_cd = false;
em = part_emitter_create(global.ps_if);

///Pause
for(i = 0; i < 8; i++){
	alarms[i] = -1;
}