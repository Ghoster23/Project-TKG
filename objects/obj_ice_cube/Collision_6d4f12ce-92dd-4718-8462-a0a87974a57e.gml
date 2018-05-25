var xx = phy_position_x;
var yy = phy_position_y;

with other {
	physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(10,xx),lengthdir_y(10,yy));
}