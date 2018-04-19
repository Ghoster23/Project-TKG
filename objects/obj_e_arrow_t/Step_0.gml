
if not global.pause{
	scr_pause_end(1);
   
   if state == 0{
	    //Move
	    phy_position_x += hspd;
	    phy_position_y += vspd;
		
	}else {
		image_alpha = alarm[0] / 150;
	
	}
	
	if place_meeting(phy_position_x,phy_position_y,obj_above_ground_parent) and des{
		state = 1;
		layer = layer_get_id("BH");
		alarm[0] = 5 * room_speed;
	}

}else {
	scr_pause_start(1);
	
}