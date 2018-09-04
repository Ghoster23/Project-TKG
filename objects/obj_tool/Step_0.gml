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
				}else {
					//Key is pressed
					if(key[0] || key[1]){
						//Create a meter
						if(meter == noone){
							//Skill 0 and 1
							if(key[0]){
								//Check skill 1 cd
								if(skills[1] != -1 && alarm[1] == -1){
									meter = scr_create_charge_up( x, y, charge[0], id, 0);
								
								//Check skill 0 cd
								}else if(skills[0] != -1 && alarm[0] == -1){
									executing = 0;
								}
							}
							
							//Skill 2 and 3
							else if(key[1]){
								//Check skill 3 cd
								if(skills[3] != -1 && alarm[3] == -1){
									meter = scr_create_charge_up( x, y, charge[1], id, 2);
									
								//Check skill 2 cd
								}else if(skills[2] != -1 && alarm[2] == -1){
									executing = 2;
								}
							}
						}
						
						//Do charge up
						else {
							switch animations[1] {
								default:
								break;
								
								case 0: //Do nothing
								break;
								
								case 1: //Animate
									//Hide meter
									if(meter != noone){
										meter.visible = false;
										var c = charge[meter.skill] * room_speed;
										chr_spd = (spr_cnt+1) / c;
									}
								
									//Animate
									if(image_index < spr_cnt){
										image_index += chr_spd;
									}
								break;
								
								case 2: //Particles
								break;
							}
						}
						
					//Key isn't pressed
					}else {
						//Delete meter and start skills
						if(meter != noone){
							var sk = meter.skill;
							instance_destroy(meter);
							meter = noone;
							
							if(chargeup && alarm[sk + 1] == -1){
								executing = sk + 1;
							}else if(alarm[sk] == -1){
								executing = sk;
							}
	
							chargeup = false;
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
	
	if(executing == -1 && ang_off != ang_off_base && ang_off != -ang_off_base){
		var d1 = abs(ang_off - ang_off_base) mod 360;
		var d2 = abs(ang_off + ang_off_base) mod 360;
		
		if(d1 > d2){
			ang_off = scr_approach(ang_off, -ang_off_base, 5);
		}else {
			ang_off = scr_approach(ang_off,  ang_off_base, 5);
		}
	}
	
}else {
	scr_pause_start(alarm_count);
	
}