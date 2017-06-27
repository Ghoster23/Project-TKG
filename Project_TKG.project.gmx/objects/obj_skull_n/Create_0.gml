/// @description Inicialise the enemy
event_inherited();
visible = true;
solid = false;

image_speed = 0;

trigger = false;
flash = false;
damaged = false;
go = false;
fl_go = false;
k = false;

//Stats
e_mhp = 10;
e_hp = 10;
e_atk = 10;
e_satk = 0;
e_def = 5;
e_sdef = 2;
e_spd = 7;

//States
state = 3;
atk_cd = false;

///Fire ball control
fl_dir = "card";
casting = false;

///Directions
dir_change = true;
i_dir = 0;

