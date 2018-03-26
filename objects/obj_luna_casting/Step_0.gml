scr_get_input();

event_inherited();

if(not global.pause){
	scr_pause_end(0);
	
	switch state {
		case 0: //Drawn
			amount = amount * 0.3; //Particle amount
			
			part_emitter_region(em_sys, emitter, x + 5 * cos(angle), x + 5 * cos(angle), y + 10 * sin(angle), y + 10 * sin(angle), ps_shape_ellipse, ps_distr_gaussian);
	
			part_emitter_stream(em_sys, emitter, global.pt_sow_fire, round(amount));
			
			if(dash_key){
				part_emitter_clear(global.ps   ,em_);
				part_emitter_clear(global.ps_ps, em);
			}
			
		break;
		
		case 1: //Stowed
			
		break;
	}
	
	image_angle = angle;
}else {
	scr_pause_start(0);
	
}