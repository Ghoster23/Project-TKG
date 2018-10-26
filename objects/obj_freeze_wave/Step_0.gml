if(not global.pause){
	image_xscale += 0.06;
	image_yscale += 0.06;
	
	ice.image_xscale += 0.06;
	ice.image_yscale += 0.06;
	
	if(phy_position_x div global.roomwd != global.current_col ||
	   phy_position_y div global.roomhg != global.current_row){
		instance_destroy(ice);
		instance_destroy();
	}
}