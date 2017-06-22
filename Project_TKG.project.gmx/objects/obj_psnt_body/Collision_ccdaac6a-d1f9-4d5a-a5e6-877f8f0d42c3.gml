if(atk_cd == false and global.p_inv){
    global.p_hp -= e_atk div global.p_def;
    atk_cd = true;
    alarm[0] = 1.5*room_speed;
    global.p_inv = true;
}


