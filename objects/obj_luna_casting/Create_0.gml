alarm_count = 2;

event_inherited();

//Visuals
drawn  = spr_umbrella;
stowed = spr_umbrella;

//offx = -8;
//offy = -4;

//Mechanics
scr_wep_luna_pat_init( 1, 0, 3 * room_speed, 10 * room_speed, 4 * room_speed, 1, 4, 5, pi/6, 20, 16);
wep_pat = scr_wep_luna_pat_states;