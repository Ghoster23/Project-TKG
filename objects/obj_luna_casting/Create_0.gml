alarm_count = 2;

event_inherited();

//Visuals
drawn  = spr_luna_casting;
stowed = spr_luna_casting;

//Mechanics
scr_wep_luna_pat_init( 1, 0, 1 * room_speed, 5 * room_speed, 1 * room_speed, 1, 4, 5, pi/6, 20, 16);
wep_pat = scr_wep_luna_pat_states;
dmg     = 1;