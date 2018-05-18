if(not global.pause){
	image_xscale += 0.01;
	image_yscale += 0.01;
	
	ice.image_xscale += 0.01;
	ice.image_yscale += 0.01;
	
	ice.conv.image_xscale += 0.01;
	ice.conv.image_yscale += 0.01;
	
	if(phy_position_x div global.roomwd != global.current_column ||
	   phy_position_y div global.roomhg != global.current_row){
		instance_destroy(ice.conv);
		instance_destroy(ice);
		instance_destroy();
	}
}