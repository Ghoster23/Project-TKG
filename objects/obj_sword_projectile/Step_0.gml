if not global.pause {
	image_speed = 1.1;

	//Move
	phy_position_x += hspd;
	phy_position_y += vspd;
	
} else {
	image_speed = 0;
	
}