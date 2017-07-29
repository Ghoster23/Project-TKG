/// @description Exist
if place_meeting(x,y,obj_ppon) and k == false{
    image_speed = 0.3;
    k = true;
    
    global.act_enemies += 1;

}

if image_index >= 4 and go == false{
    go = true;
    sprite_index = spr_skull_o;
    image_speed = 0;
    image_index = 5;
    state = 1;
}

if go == true{
    visible = true;
    
    /// Enemy States
    if (state == 1 or state == 2){
        sprite_index = spr_skull_o;
        if dis < 185{
            state = 1;

        }else if dis > 215{
            state = 2;
        }else {
            state = 0;
        }
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Flames
            sprite_index = spr_skull_f;
            
            off_x = 0;
            off_y = 0;
            
            if fl_dir == "card" and casting == false{
                cont = 4;
                instance_create_layer(x+24,y,layer,obj_skull_fl);
                
                cont = 3;
                casting = true;
                
                alarm[6] = 0.20 * room_speed;
                
            }else if fl_dir == "diag" and casting == false{
                cont = 4;
                instance_create_layer(x+20,y+20,layer,obj_skull_fl);
                
                cont = 3;
                casting = true;
                
                alarm[6] = 0.20 * room_speed;
                
            }
            
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
            instance_create_layer(x,y,layer,obj_hheart);
                
        }else if((irandom(99) + 1) == 1){
            instance_create_layer(x,y,layer,obj_fheart);
                
        }
    }
    
    go = true;
}

