/// @description Exist
if(place_meeting(x,y,obj_ppon)){
    visible = true;
    solid = true;
    depth = -y;
    
    /// Move towards the player
    if(distance_to_object(obj_body) < 64){
        phy_position_x += sign(obj_body.x - x)*e_spd;
        phy_position_y += sign(obj_body.y - y)*e_spd;
    }

    ///Get Damaged
    if(place_meeting(x,y,obj_swing)){
        e_hp -= global.p_atk div e_def;
    }

    ///Die
    if(e_hp <= 0){
        instance_destroy();
        instance_create(x,y,obj_explosion);
        global.combat -= 1;
    }

    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0){
        instance_destroy();
        instance_create(x,y,obj_explosion);
        global.combat -= 1;
    }

}

