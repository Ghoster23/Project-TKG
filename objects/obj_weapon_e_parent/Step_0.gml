scr_get_input();

if(not global.pause){
	scr_pause_end(alarm_count);
	
	if(instance_exists(owner)){
		switch(state){
			case 0: //Drawn
				angle = owner.wep_dir;
			
				//Particles
				///Layering
				if(owner.spr_side == 1){
					offs = -4;
				
				}else {
					offs = 4;
				
				}
			
				//Mechanics
				script_execute(wep_pat);
			
			break;
			case 1: //Stowed
				angle = 0;
			
				//Particles
				///Layering
				if(owner.spr_side != 1){
					offs = -4;
				
				}else {
					offs = 4;
				
				}
			break;
		}
	
	}else {
		instance_destroy();
	}
	
	//Angle to draw at
	image_angle = angle;
	
}else {
	scr_pause_start(alarm_count);
	
}