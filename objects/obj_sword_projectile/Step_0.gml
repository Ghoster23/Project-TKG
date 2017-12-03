if not global.pause {
	scr_pause_end(1);
	//Move
	phy_position_x += hspd;
	phy_position_y += vspd;
	
}else {
	scr_pause_start(1);
}