alarm_count = 0;

event_inherited();

//Visuals
drawn  = spr_umbrella;
stowed = spr_umbrella;

//offx = -8;
//offy = -4;

//Mechanics
scr_wep_umb_pat_init( 0.5, 0, 3 * room_speed, 6 * room_speed, 2 * room_speed, 1, 4, 10, pi/12, 60, 10);
wep_pat = scr_wep_umb_pat_states;