if(instance_exists(obj_sword_t)){
    if(obj_sword_t.image_speed != 0 && d_cd == false){
        global.b_hp -= (global.p_satk - global.b_s_def)*2;
        d_cd = true;
        alarm[4] = 1 * room_speed;
    }
}

