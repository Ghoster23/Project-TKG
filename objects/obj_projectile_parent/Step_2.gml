if(instance_exists(shadow)){
	phy_angular_velocity  = shadow.phy_angular_velocity;
	phy_linear_velocity_x = shadow.phy_linear_velocity_x;
	phy_linear_velocity_y = shadow.phy_linear_velocity_y;
}

if(destroyed){
	if(instance_exists(shadow)){
		instance_destroy(shadow);
	}
	instance_destroy();
}