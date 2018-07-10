/// @description inicialise the Enemy
event_inherited();

//Activation
path    = 0;
go      = false;
start   = false;

//States
state        =     0;
prev_state   =     0;
state_change = false;
atk_cd       = false;
hidden       =  true;

ini_point_x  =     x;
ini_point_y  =     y;

///Directions
dir_change = true;
i_dir      =    0;

///Distance
dis = 0;