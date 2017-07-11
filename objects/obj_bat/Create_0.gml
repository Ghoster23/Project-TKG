/// @description Inicialise the enemy
event_inherited();
image_speed=.4;
solid = false;
visible = false;
phy_fixed_rotation = true;

//Damaged and Flashing
flash = false;
damaged = false;
shift = 0;

//Start
go = false;

//Stats
e_mhp = 15;
e_hp = 15;
e_atk = 10;
e_satk = 0;
e_def = 5;
e_sdef = 2;
e_spd =1;

//States
state = 0;
state_change = false;
p_state = 0;
///Dash
dash = false;
dash_cd = false;

//Idle anchor
ini_point_x = x;
ini_point_y = y;

///Directions
dir_change = true;
i_dir = 0;

///Wooble
t = 0;
inc = 5;
amp = 5;

///Knockback
kb_x = 0;
kb_y = 0;

for(i = 0; i < 8; i++){
	alarms[i] = -1;
}