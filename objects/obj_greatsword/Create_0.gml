for(i = 0; i < 3; i++){
	alarms[i] = -1;
}

event_inherited();

drawn  = spr_greatsword;
stowed = spr_greatsword_stowed;

scr_wep_gs_pat_init(0,20,180,0.4,1,4);

amount = 0;

l = 0;

charged = false;