if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
    
    alarm[6] = 1 * room_speed;
}

///Exist
if go{

    /// Enemy States
    if state != 3{
        if dis > 100 and dis < 200 and dash == false{
            state = 1;
        
        }else if dis <= 100{
            if dash_cd == false{
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
    
    ///Enemy Behaevior
    switch(state){
        case 0:
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
        case 1:
            dir = point_direction(x,y,obj_body.x,obj_body.y);
            
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
            
            phy_position_x += hspd;
            phy_position_y += vspd;
            
        break;
        case 2:
            dash = true;
            
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd*10,dir);
            vspd = lengthdir_y(e_spd*10,dir);
   
            //Move
            phy_position_x += hspd;
            phy_position_y += vspd;
            
            //Cooldown
            if dash_cd == false{
                alarm[1] = 30;
                dash_cd = true;
            }
            
        break;
        case 3:
            sprite_index = spr_bat_d;
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
        alarm[4] = 20;
        damaged = false;
        if flash == false{
            flash = true;
            image_blend = c_red;
        }
    }
    
    ///Die
    if(e_hp <= 0) and state != 3{
        global.combat -= 1;
        sprite_index = spr_bat_d;
        state = 3;
        alarm[5] = 5;
        if((irandom(99) + 1) <= 10){
            instance_create_layer(x,y,obj_bat.layer,obj_hheart);
                
        }else if((irandom(99) + 1) == 1){
            instance_create_layer(x,y,obj_bat.layer,obj_fheart);
                
        }
    }
}

