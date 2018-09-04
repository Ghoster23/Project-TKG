{
	if(instance_exists(shadow)){
		//cauda aumenta com tempo ate certo trail_offset
		var target = 50 * (shadow.phy_speed / spd);
		trail_offset = scr_approach(trail_offset,target,(target-trail_offset) * 0.5);
	
		x1 = xprevious + lengthdir_x(-(trail_offset),-phy_rotation);
		y1 = yprevious + lengthdir_y(-(trail_offset),-phy_rotation);

		//junto à flexa nc muda
		x2 = x + lengthdir_x(-12,-phy_rotation) + lengthdir_x(2,-phy_rotation+90);
		y2 = y + lengthdir_y(-12,-phy_rotation) + lengthdir_y(2,-phy_rotation+90);
		x3 = x + lengthdir_x(-12,-phy_rotation) + lengthdir_x(2,-phy_rotation-90);
		y3 = y + lengthdir_y(-12,-phy_rotation) + lengthdir_y(2,-phy_rotation-90);

		draw_triangle(x1,y1,x2,y2,x3,y3,false);
	}
	
	draw_self();
}