if(instance_exists(prev_bullet)){
	draw_set_color(beam_color);
	draw_line_width(phy_position_x,phy_position_y,
					prev_bullet.phy_position_x,prev_bullet.phy_position_y,2);
	draw_set_color(c_white);
}