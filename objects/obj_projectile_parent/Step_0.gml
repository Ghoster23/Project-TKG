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
		if(!drop){
			instance_destroy(shadow);
		}else if(type != -1){
			scr_spawn_item(type,item,amount,phy_position_x,phy_position_y,true,(180+phy_rotation) mod 360);
			destroyed = true;
		}
	}
	
}else {
	scr_pause_start(1);
}