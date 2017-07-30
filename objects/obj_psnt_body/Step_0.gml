if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.act_enemies += 1;
    
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    visible = true;
	
	if swing == true{
		image_speed = 0;
	}
    
    if prev_state != state{
        prev_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
			scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go towards the player
			scr_define_path(self, obj_body);
			path = global.ai_path;
			scr_move_enemy(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
			
        break;
        case 2:  //Attack the player
            hspd = 0;
            vspd = 0;
			image_speed = 0;
			
            if not cd_swing {
                cd_swing = true;
                alarm[2] = 5;
                
            }
        
        break;
        case 3:  //Dead State
            solid = false;
			image_speed = 0;
            instance_create_layer(x,y,layer,obj_cadaver);
            
            with instance_nearest(x,y,obj_cadaver){
                sprite_index = spr_peasent_m_s;
                image_index = 5;
                image_speed = 0;
                image_blend = c_gray;
                image_angle -= 90;
                phy_rotation = irandom(0);
            }
            
            if((irandom(99) + 1) <= 10){
	            instance_create_layer(x,y,obj_bat.layer,obj_heart);
                
	        }
            
		instance_destroy();
		
		case "pause":
		break;
   }
    
    image_blend = c_white;
    
    ///Get Damaged
    scr_damage_enemy();
    
    if damaged == true{
        if flash == false{
            alarm[4] = room_speed*0.08;
            flash = true;
        }
    }
    
    ///Die
    if(e_hp <= 0) and state != 3{
        global.act_enemies -= 1;
        state = 3;
        alarm[5] = 5;
        
    }
	
}

if global.pause == true {
	for(i = 0; i < 6; i += 1){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
	
	if image_speed != 0{
		prev_image_speed = image_speed;
		image_speed = 0;
	}
}

if global.pause == false {
	for(i = 0; i < 6; i += 1){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}

}