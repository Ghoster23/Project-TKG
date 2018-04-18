alarm_count = 1;

event_inherited();

//Visuals
drawn    = spr_greatsword;
stowed   = spr_greatsword_stowed;
particle = global.pt_sow_fire;

//Mechanics
scr_wep_gs_pat_init(0,20,180,0.4,0,4);
wep_pat = scr_wep_gs_pat_states;
dmg     = 2;