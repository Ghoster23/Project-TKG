///Exist
if place_meeting(x,y,obj_ppon) and k == false{
    k = true;
    global.act_enemies += 1;
    
    alarm[0] = 0.5 * room_speed;

}

if image_index >= 4 and go == false{
    go = true;
    sprite_index = spr_skull_o;
    image_speed = 0;
    image_index = 5;
    state = 1;
}

if go == true{
    
    /// Enemy States
    if (state == 1 or state == 2){
        sprite_index = spr_skull_o;
        
        if dis < 185{
            //Get away
            state = 1;

        }else if dis > 215{
            //Get closer
            state = 2;
            
        }else {
            //Get firing
            state = 0;
            
        }
        
    }
    
    if casting == true{
        state = 0;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Flames
            sprite_index = spr_skull_f;
            
            off_x = 0;
            off_y = 0;
            
            if fl_dir == "card" and casting == false{
                instance_create_layer(x+24,y,obj_skull_n.layer,obj_skull_fl);
                
            }else if fl_dir == "diag" and casting == false{
                instance_create_layer(x+20,y+20,obj_skull_n.layer,obj_skull_fl);
                
            }
            
            cont = 3;
            alarm[1] = 0.25 * room_speed;
            casting = true;
            
            hspd = 0;
            vspd = 0;
            
        break;
        case 2:  //Get closer
            //Get hspd and vspd
            dir = point_direction(x,y,obj_body.x,obj_body.y);
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
            
            off_x = sign(obj_body.x - x);
            off_y = sign(obj_body.y - y);
            
        break;
        case 1:  //Run away   
            //Get hspd and vspd
            dir = point_direction(obj_body.x,obj_body.y,x,y);
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
            
            off_x = sign(obj_body.x - x);
            off_y = sign(obj_body.y - y);

        break;
    }
    
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    ///Get Damaged
    image_blend = c_white;
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
    if(e_hp <= 0){
        global.act_enemies -= 1;
        instance_destroy();
        if((irandom(99) + 1) <= 10){
            instance_create_layer(x,y,obj_skull_n.layer,obj_hheart);
                
        }else if((irandom(99) + 1) == 1){
            instance_create_layer(x,y,obj_skull_n.layer,obj_fheart);
                
        }
    }
    
    go = true;
}

