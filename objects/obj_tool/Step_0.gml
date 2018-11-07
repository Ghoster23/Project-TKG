if(not global.pause){
	scr_pause_end(alarm_count);
	
	if(instance_exists(owner)){
		switch(state){
			case 0: //Drawn
				//Base Direction
				if(not player_owned){
					angle = owner.wep_dir;
				}else {
					angle = point_direction(x,y,obj_cursor.ir_mx,obj_cursor.ir_my);
				}
			
				//Particles
				///Layering
				if(owner.spr_side == 1){
					offs = -4;
				}else {
					offs = 4;
				}
			
				//Mechanics
				
				//Execute skill
				if(executing != -1){
					if(skills[executing] != -1){
						script_execute(skills[executing],executing);
					}else {
						executing = -1;
					}
				}else if(charging != -1){
					if(key[charging div 2]){
						#region Do charging
						if(chargeup < 1){
							if(charge_scr != -1){
								chargeup = script_execute(charge_scr, charge[charging]);
							}else {
								if(meter == noone){
									meter = scr_create_charge_up( x, y, charge[charging], 0);
								}else {
									chargeup = meter.prog;
								}
							}
						}
						#endregion
					}else {
						#region Go to execute
						if      (chargeup >= 1){
							executing = charging;
							
						}else if(charging mod 2 != 0 &&  rd_skills[charging - 1]){
							var limit = charge[charging-1]/charge[charging];
							if(chargeup >= limit){ executing = charging-1; }
						}
						
						charging = -1;
						chargeup =  0;
						
						if(charge_scr != -1){ script_execute(charge_scr, -1) };
						
						if(meter != noone){
							instance_destroy(meter);
							meter = noone;
						}
						#endregion
					}
				}else {
					//Key is pressed
					if(not resetting){
						if      (rd_skills[1] and key[0]){
							charging = 1;
						}else if(rd_skills[0] and key[0]){
							charging = 0;
						}else if(rd_skills[3] and key[1]){
							charging = 3;
						}else if(rd_skills[2] and key[1]){
							charging = 2;
						}
					}
				}
			break;
			case 1: //Stowed
				angle = 90;
			
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
	
}else {
	scr_pause_start(alarm_count);
	
}