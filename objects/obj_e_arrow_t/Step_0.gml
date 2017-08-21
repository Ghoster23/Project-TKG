if not global.pause{
	scr_pause_end(1);
   
    //Move
    phy_position_x += hspd;
    phy_position_y += vspd;
	
	if place_meeting(phy_position_x,phy_position_y,obj_solid_parent) and des {
		instance_destroy();
		
	}

}else {
	scr_pause_start(1);
	
}