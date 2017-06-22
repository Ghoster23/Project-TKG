if(atk_cd == false and global.p_inv == false){
    global.p_hp -= e_atk div global.p_def;
    atk_cd = true;
    alarm[0] = 1*room_speed;
    global.p_inv = true;
}

if state == 2{
    //Get hspd and vspd
    hspd = lengthdir_x(6,dir);
    vspd = lengthdir_y(6,dir);
   
   //Move
   obj_body.phy_position_x += hspd;
   obj_body.phy_position_y += vspd;
}

