randomize();
scr_get_input();

if interval == false and blink == false{
    interval = true;
    alarm[1] = 5 * room_speed;
}

if blink == true{
    if image_speed == 0{
        image_speed = 0.2;
    }else if image_speed == 0.2 and (image_index == 0 or image_index == 9){
        image_speed = 0;
        image_index = 0;
        blink = false;
    }
}

///Exist
visible = true;

depth = -y;

/// Enemy States
if dis < 32 and interact_key and dead == false{
    state = 1;
    
    solid = true;
    image_speed = .9;
    sprite_index = spr_mimic_a;
        
    e_spd = 4;
}
    
///Enemy Behaevior
switch(state){
    case 0:
    //concealed animation
        density = 0;
    break;
    case 1:
        density = 0.5;
        
        if dead == false{
            a += 1;
            phy_rotation = 25 * sin(a);
        }
        
        phy_position_x += floor(sign(obj_body.x - x)*e_spd);
        phy_position_y += floor(sign(obj_body.y - y)*e_spd);
        
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
        
        if damaged = true{
            alarm[4] = 20;
            if flash == false{
                flash = true;
                image_blend = c_red;
            }
        }
        
        ///Die
        if(e_hp <= 0) and dead == false{
            dead = true;
            if((irandom(99) + 1) <= 10){
                instance_create(x,y,obj_hheart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create(x,y,obj_fheart);
                
            }
            alarm[2] = 20;
            sprite_index = spr_mimic_d;
    }
    break;   
    case 3:
        sprite_index = spr_mimic_d;
        solid = false;
        instance_create(x,y,obj_cadaver);
            
            with instance_nearest(x,y,obj_cadaver){
                sprite_index = spr_mimic_d;
                phy_rotation = irandom(360);
            }
        instance_destroy();
    break; 
}

