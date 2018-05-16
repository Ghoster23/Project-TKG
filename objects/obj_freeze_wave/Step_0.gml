if(not global.pause){
	image_xscale += 0.05;
	image_yscale += 0.05;
	
	if(phy_position_x div global.roomwd != global.current_column ||
	   phy_position_y div global.roomhg != global.current_row){
		instance_destroy();
	}
}