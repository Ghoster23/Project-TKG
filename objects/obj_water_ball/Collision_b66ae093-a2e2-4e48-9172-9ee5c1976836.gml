with other {
	var dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y);
	physics_apply_impulse(x,y,lengthdir_x(10, dir),lengthdir_x(10, dir));
}