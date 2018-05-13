if(!global.pause){
	scr_pause_end(1);
	
	if(!collided){
		offs -= fall_rate;
		phy_position_y += fall_rate * abs_cos;
	}else {
		offs -= fall_rate * 16;
		phy_position_y += fall_rate * 16 * abs_cos;
	}
	
	if(offs <= 0){
		
		instance_destroy(shadow);
	}
	
}else {
	scr_pause_start(1);
}