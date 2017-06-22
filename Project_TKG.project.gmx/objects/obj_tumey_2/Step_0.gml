depth = -y;

if(global.ph_zz >= 0 && global.alarm_zz == false && cd == false){
    instance_create(x+16,y+16,obj_bt_bullet);
    image_index = 4;
    global.ph_zz += 1;
    alarm[6] = 1 * room_speed;
    cd = true;
    
}else if(global.ph_rp >= 0 && global.alarm_rp == false && cd == false){
    instance_create(x+16,y-8+16,obj_bt_bullet);
    instance_create(x+4+16,y+16,obj_bt_bullet);
    instance_create(x-4+16,y+16,obj_bt_bullet);
    image_index = 4;
    global.ph_rp += 1;
    alarm[6] = 1 * room_speed;
    cd = true;
 
}else if(global.ph_cl >= 0 && global.alarm_cl == false && cd == false){
    instance_create(x+16,y+16,obj_bt_bullet);
    image_index = 4;
    global.ph_cl += 1;
    alarm[6] = 0.5 * room_speed;
    cd = true; 
}

if(global.ph_zz == 1){
    alarm[0] = 12 * room_speed;
}
if(global.ph_rp == 1){
    alarm[1] = 5 * room_speed;
}
if(global.ph_cl == 1){
    alarm[2] = 8 * room_speed;
}

if(global.b_hp <= 10){
    instance_destroy();
    instance_create(x,y+32,obj_tumey_3);
    instance_create(x,y-32,obj_tumey_3);
}

if(place_meeting(x,y,obj_swing)){
        if(d_cd == false){
        global.b_hp -= (global.p_atk*1.5) div global.b_def;
        d_cd = true;
        alarm[7] = 1 * room_speed;
    }
}


