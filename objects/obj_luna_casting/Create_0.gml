alarm_count = 2;

event_inherited();

//Visuals
drawn  = spr_luna_casting;
stowed = spr_luna_casting;

//Mechanics
scr_wep_luna_pat_init(0.5,0,0.1,1,1,5,4,pi/6,20);
wep_pat = scr_wep_luna_pat_states;
dmg     = 1;