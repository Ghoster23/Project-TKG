if(phy_speed < 1){
	draw_script = scr_draw_item_floor;
	
}else if(draw_script == scr_item_jump){
    x_ = s - phy_speed;
	z = -x_*(x_ - 32)*0.12;
}