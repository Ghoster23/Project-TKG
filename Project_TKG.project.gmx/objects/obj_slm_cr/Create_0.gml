/// @description Inicialise the enemy
event_inherited();
image_speed=.2;
solid = false;
visible = false;
image_alpha = 0.7;
trigger = false;
flash = false;
damaged = false;
go = false;

signal_x = 0;
signal_y = 0;

signal[0] = -1;
signal[1] = 1;

//Stats
e_mhp = 5;
e_hp = 5;
e_atk = 10;
e_satk = 0;
e_def = 5;
e_sdef = 2;
e_spd =1;

//States
state = 0;
state_change = false;
p_state = 0;
atk_cd = false;
ini_point_x = x;
ini_point_y = y;

///Directions
dir_change = true;
i_dir = 0;

///Distance
dis = 0

///Knockback
kb_x = 0;
kb_y = 0;

