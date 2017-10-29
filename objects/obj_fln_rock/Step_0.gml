image_speed = 0;

if not global.pause {
	f_x = phy_position_x;
	height = f_y - phy_position_y;

	x = phy_position_x;
	y = phy_position_y;

	offs = height;

	if(height <= 16){
		alarm[0] = 0.02*room_speed;
	}else {
		phy_position_y += spd;
	}
}