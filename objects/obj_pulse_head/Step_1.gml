if(not global.pause){
	switch state {
		case 0:
			if(pulse_width != pulse_wd_mx){
				pulse_width = scr_approach(pulse_width,pulse_wd_mx,pulse_wd_vr);
			}else {
				state = 1;
			}
		break;
		
		case 1:
			if(pulse_width != 0){
				pulse_width = scr_approach(pulse_width,0,pulse_wd_vr);
			}else {
				destroyed = true;
			}
		break;
	}
}

path_clear_points(pulse_path);