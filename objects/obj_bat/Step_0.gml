event_inherited();
//Appear
if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.act_enemies += 1;
    
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
    
    if prev_state != state{
        prev_state = state;
        state_change = true;
    }
    
    ///Enemy Behavior
    switch(state){
		///Idle
        case 0:
			image_speed=1.5;
			scr_idle_enemy(32,20);
            
        break;
		
		///Chase the player
        case 1:
			image_speed=1.5;
            scr_move_enemy(point_direction(x,y,obj_body.x,obj_body.y),1);
            
        break;
		
		///Dash towards the player
        case 2:
			image_speed = 0;
			
			if alarm[6] == -1 and not dash_cd{
				alarm[6] = 10;
			}
            
			if dash {
				scr_move_enemy(dir,10);
			
				//Cooldown
		        if dash_cd == false{
					alarm[1] = 15;
					dash_cd = true;
		        }
			}
	
            
        break;
		
		///Die
        case 3:
			global.act_enemies -= 1;
            sprite_index = spr_bat_d;
			
	        if((irandom(99) + 1) <= 10){
	            instance_create_layer(x,y,obj_bat.layer,obj_heart);
                
	        }
			
			instance_destroy();
		break;
		case "pause":
		break;
	}
    
	
    ///Get Damaged
    scr_damage_enemy();
    
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