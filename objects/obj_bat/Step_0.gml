event_inherited();
//Appear
if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
    
    alarm[0] = 1 * room_speed;
}

//Exist
if go and not global.pause{
	for(i = 0; i < 8; i++){
		if alarms[i] != -1 {
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}
	
    /// Enemy States
    if state != 3  and state != 2{
        if dis > 100 and dis < 200 and dash == false{
            state = 1;
        
        }else if dis <= 100{
            if dash_cd == false {
                ///Dash activation
                state = 2;
            }else if dash == false{
                state = 1;
            }

        }else if dis >= 200 and dash == false{
            state = 0;
        }
    }
    
    if p_state != state{
        p_state = state;
        state_change = true;
    }
    
    ///Enemy Behavior
    switch(state){
		///Idle
        case 0:
			image_speed=.4;
			
			///Determine anchor after state change
            if state_change == true{
                ini_point_x = x;
                ini_point_y = y;
                
                state_change = false;
            }
            
			///If in range of anchor
            if distance_to_point(ini_point_x,ini_point_y) <= 32{
				///Change direction
                if dir_change == true{
                    alarm[3] = 20;
                    dir_change = false;
                    i_dir = irandom(360);
                }
				
			///Else back get back in range of anchor
            }else{
                i_dir = point_direction(x,y,ini_point_x,ini_point_y);
                
            }
            
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,i_dir);
            vspd = lengthdir_y(e_spd,i_dir);
   
            //Move
            phy_position_x += hspd;
            phy_position_y += vspd;
            
        break;
		
		///Chase the player
        case 1:
			image_speed=.4;
            dir = point_direction(x,y,obj_body.x,obj_body.y);
            
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
            
            phy_position_x += hspd;
            phy_position_y += vspd;
            
        break;
		
		///Dash towards the player
        case 2:
			image_speed = 0;
			
			if alarm[6] == -1 and not dash_cd{
				alarm[6] = 10;
			}
            
			if dash {
				//Get hspd and vspd
		        hspd = lengthdir_x(e_spd*10,dir);
		        vspd = lengthdir_y(e_spd*10,dir);
	            //Move
		        phy_position_x += hspd;
		        phy_position_y += vspd;
			
				//Cooldown
		        if dash_cd == false{
					alarm[1] = 15;
					dash_cd = true;
		        }
			}
	
            
        break;
		
		///Die
        case 3:
			global.combat -= 1;
            sprite_index = spr_bat_d;
			
	        if((irandom(99) + 1) <= 10){
	            instance_create_layer(x,y,obj_bat.layer,obj_hheart);
                
	        }else if((irandom(99) + 1) == 1){
	            instance_create_layer(x,y,obj_bat.layer,obj_fheart);
                
	        }
			
			instance_destroy();
		break;
		case "pause":
		break;
	}
    
	
    ///Get Damaged
    if(place_meeting(x,y,obj_swing)){
        e_hp -= global.p_atk div e_def;
        damaged = true;
    }
    
    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0){
        e_hp -= global.p_satk div e_sdef;
        damaged = true;
    }
    
	///Flash
    if damaged == true{
        alarm[4] = 0.03*room_speed;
        damaged = false;
        if flash == false{
            flash = true;
        }
		
    }
    
    ///Go to death state
    if(e_hp <= 0) and state != 3{
        state = 3;
		
    }
}

if global.pause == true{
	for(i = 0; i < 8; i++){
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