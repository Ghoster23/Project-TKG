scr_get_input();

event_inherited();

if not global.pause {
	scr_pause_end(3);
	
	switch state {
		case 0: //Drawn
			amount = amount * 0.3; //Particle amount
			
			part_emitter_region(em_sys, emitter, x + 5 * cos(angle), x + 5 * cos(angle), y + 10 * sin(angle), y + 10 * sin(angle), ps_shape_ellipse, ps_distr_gaussian);
	
			part_emitter_stream(em_sys, emitter, global.pt_sow_fire, round(amount));
			
			if(dash_key){
				part_emitter_clear(global.ps   ,em_);
				part_emitter_clear(global.ps_ps, em);
			}
			
			angle = point_direction(x,y,mouse_x,mouse_y);
			
			scr_wep_gs_pat_states();
			
			image_angle  = angle;
			sprite_index = drawn;
		break;
		case 1: //Stowed
			image_angle  =  angle;
			sprite_index = stowed;
		break;
	}
		
}else {
	scr_pause_start(3);
	
}