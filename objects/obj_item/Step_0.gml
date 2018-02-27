if(z <= 0 && x_ != 0){
	draw_script = scr_draw_item_floor;
	
}else if(draw_script == scr_item_jump){
	if(s == 0){
	    x_ = 0;
		z  = 0;
	}else {
		x_  = s - phy_speed;
		x__ = (x_ * 32) / s;
		//z   = clamp(-x__*(x__ - 32)*0.12,0,64);
		z   = 25 * (x_ * 5) / s - 4.9 * ((x_ * 5) / s)^2;
	}
}

c += 0.5;
c = c mod 360;