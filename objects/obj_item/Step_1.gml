if(not once){
	physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(32,dir),lengthdir_y(32,dir));
	s  = phy_speed;
	once = true;
}