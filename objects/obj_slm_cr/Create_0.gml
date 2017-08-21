/// @description Inicialise the enemy
event_inherited();
image_speed=.2;
solid = false;
visible = false;
image_alpha = 0.7;

flash = false;
damaged = false;
go = false;

signal_x = 0;
signal_y = 0;

signal[0] = -1;
signal[1] = 1;

//Stats
e_mhp = 20;
e_hp = 20;
e_atk = 10;
e_satk = 0;
e_def = 2;
e_sdef = 2;
e_spd = 1.5;

//States
state = 0;
state_change = false;
prev_state = 0;
atk_cd = false;
ini_point_x = x;
ini_point_y = y;

///Directions
dir_change = true;
i_dir = 0;

///Distance
dis = 0

//Pause
for(i = 0; i < 6; i++){
	alarms[i] = -1;
}