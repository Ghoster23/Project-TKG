/// @description Inicialise the enemy
event_inherited();
image_speed=.4;
solid = false;
visible = false;
phy_fixed_rotation = true;
trigger = false;
flash = false;
cr_cd = false;
damaged = false;
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
atk_cd = false;
dash = false;
dash_cd = false;
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

