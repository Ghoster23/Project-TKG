if state == 1 {
	scr_define_path(self, obj_body);
	path = global.ai_path;
}

bl_sight = collision_line(x,y,obj_body.x,obj_body.y,obj_solid_parent,true,true);

if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.act_enemies += 1;
    
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
    
    if prev_state != state{
        prev_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
			image_speed = 0.4;
            scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go towards the player
			image_speed = 0.4;
            scr_move_enemy(point_direction(x,y,path_get_point_x(path,2),path_get_point_y(path,2)),1);
            
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
    
    image_blend = c_white;
    
    ///Get Damaged
    scr_damage_enemy();
    
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