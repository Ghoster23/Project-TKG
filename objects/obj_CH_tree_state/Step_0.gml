scr_get_input();

if not global.pause {
	s_x = s_x + ss_x*5;

	if(s_x > 360 and ss_x == 1){
	    ss_x = -1;
	    mult = irandom_range(2,3);
	}
	if(s_x < 180 and ss_x == -1){
	    ss_x = 1;
	    mult = irandom_range(2,3);
	}
	
	for(i = 0; i < 5; i += 1){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}
	
	///Determine action state
	if start == true{
	    if bene == true{    
	        if state == 0{
	            //Swing down
	            state = 1;
	        }
        
	        if state == 4{
	            grab = true;
	        }
        
	    }else if bene == false{
	        image_speed = 0.5;
        
	        if(image_index >= 15){
	            instance_create_layer(x,y,"Instances",obj_CH_deer_state);
				while instance_exists(obj_CH_rcone){
	                with obj_CH_rcone{
	                    instance_destroy();
	                }
	            }
				while instance_exists(obj_CH_rcones){
	                with obj_CH_rcones{
	                    instance_destroy();
	                }
	            }
	            while instance_exists(obj_CH_root){
	                with obj_CH_root{
	                    instance_destroy();
	                }
	            }
				while instance_exists(obj_CH_groots){
	                with obj_CH_groots{
	                    instance_destroy();
	                }
	            }
	            instance_destroy();
	        }
	    }
    
	}

	///Action state based changes
	switch(state){
	    //Dormant state
	    case 0:
	        global.b_spd = 0;
	        image_speed = 0;
        
	    break;
	    //Root attack
	    ///See root object
		case 1:
			///Attack
			if ph == 3{
				ph = 0;
			}
		
		break;
		case 2:
			///Burrow
		
	    break;
	    //Leaves
	    case 3:
	        ///1st set
	        if leaves == 1{
	            if l1 == false{
	                alarm[1] = 0.6 * room_speed;
	                l1 = true;
                
	            }
        
	        ///2nd set
	        }else if leaves == 2{
	            if l2 == false{
	                pat = "f";
	                alarm[2] = 5 * room_speed;              
	                l2 = true;
                
	            }
            
            
	            if(s_x mod 5*mult == 0){
	                instance_create_layer(x,y,"IF",obj_CH_leaf);
	            }
                        
	        ///3rd set and next phase
	        }else if leaves == 3{
	            if l3 == false{
	                alarm[3] = 0.6 * room_speed;
	                l3 = true;
                
	            }
			
	        }else if leaves == 4{
				//Wait
			
			}
        
	    break;
    
	    //Grab the player
	    case 4:        
	        if not instance_exists(obj_CH_groots){
	            instance_create_layer(obj_body.x,obj_body.y,"Instances",obj_CH_groots);
	        }
	        leaves = 1;
		
			if stop == 3{
				state = 5;
			}
		
	    break;
		case 5:
			if instance_exists(obj_CH_groots){
				instance_destroy();
			}
			
			if global.st_stuck == true{
				global.st_stuck = false;
				global.st_stuck_d = 0;
			}
	
			while instance_exists(obj_CH_root){
				with obj_CH_root{
					instance_destroy();
				}
			}
			if instance_exists(obj_CH_root_d){
				with obj_CH_root_d{
					instance_destroy();
				}
			}
	
			if interact_key and distance_to_object(obj_body) < 30{
				game_restart();
			}

		break;
	}
}else {
	for(i = 0; i < 5; i+= 1){
		if alarm[i] != -1 {
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
	
	if prev_image_speed == 0{
		prev_image_speed = image_speed;
		image_speed = 0;
	}
}