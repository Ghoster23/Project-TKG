if(state == 1 && inv == false){
    global.p_hp -= global.b_atk div global.p_def;
    inv = true;
    alarm[3] = 1 * room_speed;
}else if(state == 2 && inv == false){
    global.p_hp -= (global.b_atk * 2) div global.p_def;
    inv = true;
    alarm[3] = 1 * room_speed;
}

