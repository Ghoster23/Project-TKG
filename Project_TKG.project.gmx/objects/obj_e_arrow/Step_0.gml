go = true;

if go == true{
    //Get hspd and vspd
    hspd = lengthdir_x(15,dir);
    vspd = lengthdir_y(15,dir);
   
    //Move
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    phy_rotation = -point_direction(x,y,x + hspd,y + vspd) + 90;
    
    if once == false{
        //alarm[1] = 0.6 * room_speed;
        once = true;
    }
}

