/// @description Exist
if(place_meeting(x,y,obj_ppon)){
    visible = true;
    solid = true;
    depth = -y;
    
    if(trigger == false){
        global.combat += 1;
        trigger = true;
    }
    
    /// Move towards the player
    if(distance_to_object(obj_body) < 192){
        phy_position_x += sign(obj_body.x - x)*e_spd;
        phy_position_y += sign(obj_body.y - y)*e_spd;
    }
    
    ///Get Damaged
    if(place_meeting(x,y,obj_swing)){
        e_hp -= global.p_atk div e_def;
    } 
    
    ///Die
    if(e_hp <= 0){
        global.combat -= 1;
        instance_destroy();
        instance_create(x,y,obj_red_puff);
        if((irandom(99) + 1) <= 10){
                instance_create(x,y,obj_hheart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create(x,y,obj_fheart);
                
            }
    }

    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0){
        e_hp -= global.p_satk div e_sdef;
    }

}

