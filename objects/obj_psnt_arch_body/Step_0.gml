if state == 1 {
	scr_define_path(self, obj_body);
	path = global.ai_path;
}

bl_sight = collision_line(x,y,obj_body.x,obj_body.y,obj_solid_parent,true,true);

if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
    
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    visible = true;

    /// Enemy States
    if state != 3{
        if 80 < dis < 200 and not bl_sight{
			image_speed = 0.4;
            state = 2;
        
        }
        if dis <= 64{
            state = 0;

        }
        if dis >= 200 or bl_sight{
			image_speed = 0.4;
            state = 1;
        }
    }
    
    if p_state != state{
        p_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
			image_speed = 0.4;
            if state_change == true{
                ini_point_x = x;
                ini_point_y = y;
                
                state_change = false;
            }
            
            if distance_to_point(ini_point_x,ini_point_y) <= 32{
            
                if dir_change == true{
                    alarm[3] = 20;
                    dir_change = false;
                    i_dir = irandom(360);
                }
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
        case 1:  //Go towards the player
			image_speed = 0.4;
            dir = point_direction(x,y,path_get_point_x(path,2),path_get_point_y(path,2));
		
			//Get hspd and vspd
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
   
            //Move
            phy_position_x += hspd;
            phy_position_y += vspd;
			
            
        break;
        case 2:  //Attack the player
            hspd = 0;
            vspd = 0;
			image_speed = 0;
            
            if cd_arrow == false and bow.image_index == 4{
                cd_arrow = true;
                alarm[1] = 2 * room_speed;
            }
        
        break;
        case 3:  //Dead State
			global.combat -= 1;
			sprite_index = spr_bat_d;
	        if((irandom(99) + 1) <= 10){
	            instance_create_layer(x,y,layer,obj_hheart);
                
	        }else if((irandom(99) + 1) == 1){
	            instance_create_layer(x,y,layer,obj_fheart);
                
	        }
			instance_destroy();
		break;
		case "pause":
		break;
   }
    
    image_blend = c_white;
    
    ///Get Damaged
    if(place_meeting(x,y,obj_swing)){
        e_hp -= global.p_atk div e_def;
        damaged = true;
    }
    
    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0){
        e_hp -= global.p_satk div e_sdef;
        damaged = true;
    }
    
    if damaged == true{
        if flash == false{
            alarm[4] = 20;
            flash = true;
            image_blend = c_red;
        }
    }
    
    ///Die
    if e_hp <= 0 and state != 3{
        state = 3;
        alarm[5] = 5;
    }
	
	if hspd == 0 and vspd == 0{
		image_speed = 0;
	}
}

if global.pause == true {
	for(i = 0; i < 6; i += 1){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
	
	image_speed = 0;
}

if global.pause == false {
	for(i = 0; i < 6; i += 1){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	image_speed = 0.4;
}