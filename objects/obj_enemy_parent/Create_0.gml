/// @description inicialise the Enemy
event_inherited();

//States
state        =     0;
prev_state   =     0;
state_change = false;
atk_cd       = false;

ini_point_x  =     x;
ini_point_y  =     y;

//Statuses
event_perform(ev_alarm,1);

///Directions
dir_change = true;
i_dir      =    0;

///Distance
dis = 0;