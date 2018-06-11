if(not global.pause){
	scr_pause_end(alarm_count);
	
	//Particle
	///Drawing
	part_emitter_region(em_sys, emitter, x + 5 * cos(angle), x + 5 * cos(angle), y + 10 * sin(angle), y + 10 * sin(angle), ps_shape_ellipse, ps_distr_gaussian);
	
	if(amount >= 0.1){
		amount = amount * 0.3; //Particle amount
		
		part_emitter_stream(em_sys, emitter, particle, round(amount));
		
	}else {
		amount = 0;
		
	}
	
	switch(state){
		case 0: //Drawn
			angle = point_direction(x,y,obj_cursor.ir_mx,obj_cursor.ir_my);
			
			sprite_index              = drawn;
			global.body.hands.visible = false;
			
			//Particles
			///Layering
			if(global.body.spr_side == 0){
				offs = -4;
				
				if(l == 0){
					part_emitter_clear(global.ps_ps,em);
					emitter = em_;
					em_sys  = global.ps;
					l = 1;
				}
			}else {
				offs = 4;
				
				if(l == 1){
					part_emitter_clear(global.ps,em_);
					emitter = em;
					em_sys  = global.ps_ps;
					l = 0;
				}
			}
			
			//Mechanics
			script_execute(wep_pat);
			
		break;
		case 1: //Stowed
			angle = 0;
			
			sprite_index              = stowed;
			global.body.hands.visible = true;
			
			//Particles
			///Layering
			if(global.body.spr_side != 0){
				offs = -4;
				
				if(l == 0){
					part_emitter_clear(global.ps_ps,em);
					emitter = em_;
					em_sys  = global.ps;
					l = 1;
				}
			}else {
				offs = 4;
				
				if(l == 1){
					part_emitter_clear(global.ps,em_);
					emitter = em;
					em_sys  = global.ps_ps;
					l = 0;
				}
			}
		break;
	}
	
	///Clear if dash
	if(global.key_active[key_id.dash]){
		part_emitter_clear(global.ps   ,em_);
		part_emitter_clear(global.ps_ps, em);
	}
	
	//Angle to draw at
	image_angle = angle;
	
}else {
	scr_pause_start(alarm_count);
	
}