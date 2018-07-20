/// @description inicialise the LIFE FORM
event_inherited();

//Move
path = 0;

//States
state        = 0;
prev_state   = 0;
state_change = false;

//Statuses
event_perform(ev_alarm,1);