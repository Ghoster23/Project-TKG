if(!global.pause){
	scr_pause_end(1);
	
	if(!collided){
		offs -= fall_rate;
		phy_position_y += fall_rate;
	}else {
		offs -= fall_rate * 16;
		phy_position_y += fall_rate * 16;
	}
	
	if(offs <= -fall_rate div 2){
		instance_destroy(shadow);
	}
	
}else {
	scr_pause_start(1);
}