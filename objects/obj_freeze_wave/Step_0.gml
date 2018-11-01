if(not global.pause){	
	if(phy_position_x div global.roomwd != global.current_col ||
	   phy_position_y div global.roomhg != global.current_row){
		instance_destroy(ice);
		instance_destroy();
	}
}