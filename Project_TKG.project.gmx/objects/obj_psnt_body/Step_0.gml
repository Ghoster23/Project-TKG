if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
    
    alarm[6] = 1 * room_speed;
}

///Exist
if go{
    visible = true;
    
    /// Enemy States
    if state != 3{
        if 80 < dis < 200{
            state = 1;
        
        }
        if dis <= 24{
            state = 2;

        }
        if dis >= 200{
            state = 0;
        }
    }
    
    if p_state != state{
        p_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
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
            dir = point_direction(x,y,obj_body.x,obj_body.y);
            
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
            
            phy_position_x += hspd;
            phy_position_y += vspd;
            
        break;
        case 2:  //Attack the player
            hspd = 0;
            vspd = 0;
            
            if cd_swing == false{
                cd_swing = true;
                alarm[2] = 10;
                alarm[1] = 30;
            }
        
        break;
        case 3:  //Dead State
            solid = false;
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
                instance_create_layer(x,y,layer,obj_hheart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create_layer(x,y,layer,obj_fheart);
                
            }
            
        instance_destroy();
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
    if(e_hp <= 0) and state != 3{
        global.combat -= 1;
        state = 3;
        alarm[5] = 5;
        
    }
}

