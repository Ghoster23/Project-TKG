if state == 1{
    if(atk_cd == false){
        if global.p_inv == false{
            global.p_hp -= e_atk div global.p_def;
            atk_cd = true;
            alarm[0] = 1*room_speed;
            global.p_inv = true;
        }
    }
}

