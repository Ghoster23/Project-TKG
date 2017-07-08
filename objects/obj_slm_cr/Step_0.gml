randomize();

///Start enemy
if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
    
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    visible = true;
    solid = true;

    /// Enemy States
	if global.pause == false{
	    if dis < 200 and state != 2{
	        state = 1;

	    }else if dis >= 200 and state != 2{
	        state = 0;
	    }
	}
    
    if p_state != state{
        p_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:
            //Get a new anchor
            if state_change == true{
                ini_point_x = x;
                ini_point_y = y;
                
                state_change = false;
            }
            
            //Don't go to far honey LOLS comentarios a manel
            if distance_to_point(ini_point_x,ini_point_y) <= 32{
            
                if dir_change == true{
                    alarm[3] = 15;
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
        case 1:  //Go after the player
            phy_position_x += sign(obj_body.x - x)*e_spd;
            phy_position_y += sign(obj_body.y - y)*e_spd;
            
        break;
        case 2:  //Dead state
            sprite_index = spr_slime_d;
            image_speed = 0.2;
            
            if image_index == 5{
                instance_destroy();
            }
			
		break;
		case "pause":
		break;

    }
    
      
    ///Get Damaged
    if(place_meeting(x,y,obj_swing)) and damaged == false and state != 2{
        e_hp -= global.p_atk div e_def;
        if e_hp > 0{
            damaged = true;
			flash=true;
			alarm[5] = room_speed*0.05;
            alarm[4] = 20;
        }
    } 
    
    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0) and damaged == false and state != 2{
        e_hp -= global.p_satk div e_sdef;
        if e_hp > 0{
            damaged = true;
			flash=true;
			alarm[5] = room_speed*0.05;
            alarm[4] = 20;
        }
    }
    
    
    ///Die
    if(e_hp <= 0) and state != 2{
		flash=true;
		alarm[5] = room_speed*0.02;
        global.combat -= 1;
        alarm[1] = 16;
                
        sprite_index = spr_slime_d;
        image_index = 0;
        image_speed = 0.2;
        state = 2;
        
    }

    ///Creep
    signal_x = signal[irandom(1)];
    signal_y = signal[irandom(1)];
    instance_create_layer(x+random(5)*signal_x,y+random(5)*signal_y,"BH",obj_creep);
}

if global.pause == true{
	image_speed = 0;
}else {
	image_speed = 0.2;
}