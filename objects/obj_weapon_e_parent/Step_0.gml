if(not global.pause){
	scr_pause_end(alarm_count);
	
	if(instance_exists(owner)){
		switch(state){
			case 0: //Drawn
				if(not player_owned){
					angle = owner.wep_dir;
				}else {
					angle = point_direction(x,y,obj_cursor.ir_mx,obj_cursor.ir_my);
					
					if(global.key_active[key_id.skill_1]){
						attack = true;
					}
				}
			
				//Particles
				///Layering
				if(owner.spr_side == 1){
					offs = -4;
				
				}else {
					offs = 4;
				
				}
			
				//Mechanics
				script_execute(pat);
			
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