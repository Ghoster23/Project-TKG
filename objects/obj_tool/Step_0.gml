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
						if(not chargeup){
							if(charge_scr != -1){
								script_execute(charge_scr, charge[charging]);
							}else if(meter == noone){
								meter = scr_create_charge_up( x, y, charge[charging], 0);
							}
						}
						#endregion
					}else {
						#region Go to execute
						if(chargeup){
							executing = charging;
							charging  = -1;
						}else {
							executing = charging - 1;
						}
						
						if(charge_scr != -1){ script_execute(charge_scr, -1) };
						
						if(meter != noone){
							instance_destroy(meter);
							meter = noone;
						}
						#endregion
					}
				}else {
					//Key is pressed
					if((key[0] || key[1]) && not resetting){
						for(var i = 0; i < 4; i++){
							if(key[i div 2] and skills[i] != -1 and alarm[i] == -1){
								if(charge[i] == -1){
									executing = i;
									break;
								}else {
									charging  = i;
									break;
								}
							}
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