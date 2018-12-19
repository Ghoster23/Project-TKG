if(not global.pause){
	scr_pause_end(alarm_count);
	
	if(instance_exists(owner)){
		switch(state){
			case 0: 
				#region Drawn
				#region Base Direction
				if(not player_owned){
					angle = owner.wep_dir;
				}else {
					angle = point_direction(x,y,obj_cursor.x,obj_cursor.y);
				}
				#endregion
			
				//Mechanics
				if(executing != -1){
					#region Execute Skill
					if(skills[executing] != -1){
						script_execute(skills[executing],executing);
					}else {
						executing = -1;
					}
					#endregion
				}else if(charging != -1){
					#region Charge Skill
					if(key[charging div 2]){
						#region Do charging
						if(charge_scr != -1){
							chargeup = script_execute(charge_scr, charge[charging]);
						}else {
							if(meter == noone || not instance_exists(meter)){
								meter = scr_create_charge_up( x, y, charge[charging], id);
							}else {
								chargeup = meter.prog;
							}
						}
						
						if(chargeup == 1){ scr_chrup_hold_exception(); }  
						#endregion
					}else {
						#region Go to execute
						if      (chargeup >= 1 || not charge[charging]){
							executing = charging;
							
						}else if(charging mod 2 != 0 &&  rd_skills[charging - 1]){
							var limit = charge[charging-1]/charge[charging];
							if(chargeup >= limit){ executing = charging-1; }
						}
						
						if(not scr_chrup_chargeup_exception()){
							chargeup =  0;
						}
						
						charging = -1;
						
						if(charge_scr != -1){ script_execute(charge_scr, -1) };
						
						if(meter != noone){
							instance_destroy(meter);
							meter = noone;
						}
						#endregion
					}
					#endregion
				}else {
					#region Select Skill
					var order = [1,0,3,2];
					
					if(not resetting){
						for(var i = 0; i < 4; i++){
							var k = order[i];
							
							if(rd_skills[k] and key[k div 2]){
								if(charge[k]){
									charging  = k;
								}else {
									executing = k;
								}
								break;
							}
						}
					}
					#endregion
				}
				#endregion
			break;
			
			case 1: //Stowed
			break;
		}
	}else {
		instance_destroy();
	}
	
}else {
	scr_pause_start(alarm_count);
}