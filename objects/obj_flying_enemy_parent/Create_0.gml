/// @description Insert description here
event_inherited();

go      = false;
start   = false;

//Stats
e_mhp  =  10;
e_hp   =  10;
e_atk  =   5;
e_satk =   5;
e_def  =   5;
e_sdef =   5;
e_spd  =   3;

//States
state        =     0;
state_change = false;
prev_state   =     0;
atk_cd       = false;
ini_point_x  =     x;
ini_point_y  =     y;

///Directions
dir_change = true;
i_dir      =    0;

///Distance
dis = 0;