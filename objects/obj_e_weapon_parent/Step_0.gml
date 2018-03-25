if(not global.pause){
	switch(state){
		case 0: //Drawn
			angle = degtorad(-(image_angle+90));
			global.body.hands.visible = false;
			
			if global.body.spr_side == 0 { //Held
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
		case 1: //Stowed
			angle = -45;
			global.body.hands.visible = true;
			
			if global.body.spr_side != 0 {
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
}