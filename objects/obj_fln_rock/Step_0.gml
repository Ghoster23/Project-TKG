image_speed = 0;

if not global.pause {
	f_x = phy_position_x;

	x = phy_position_x;
	y = phy_position_y;


	phy_position_y += spd;


	if(f_y - phy_position_y > 40){
	    depth = -y - 500;
	}else {
	    depth = -y;
        
	}

	if(f_y - phy_position_y < 5){
	    instance_destroy();
	}
}