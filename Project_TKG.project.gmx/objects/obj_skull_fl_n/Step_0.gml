if instance_exists(skull){
    if skull.fl_go == true {
        go = true;
}

depth = -y -418;

if go == true{
    //Get hspd and vspd
    hspd = lengthdir_x(5,dir);
    vspd = lengthdir_y(5,dir);
   
    //Move
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    if once == false{
        alarm[1] = 0.6 * room_speed;
        once = true;
    }
}

part_particles_create(global.ps,x+hspd,y+vspd,global.pt_trail,1);
part_particles_create(global.ps,x+hspd,y+vspd,global.pt_sflame,50);
}else {
    instance_destroy();
}

