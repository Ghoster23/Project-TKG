if not instance_exists(obj_stuck_sword){
	visible = false;
}else {
	visible = true;
	image_index = obj_head.image_index;
}

x = global.body.phy_position_x;
y = global.body.phy_position_y;