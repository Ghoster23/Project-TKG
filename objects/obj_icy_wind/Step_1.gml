if(phy_speed == 0 and not once){
	physics_apply_impulse(phy_position_x,phy_position_y,spd*cos(dir),spd*sin(dir));
	once = true;
}