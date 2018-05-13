if(!global.pause){
	scr_pause_end(1);
	
	if(!collided){
		var fr = 0.5 * fall_rate * (life_time - alarm[0]);
		offs -= fr;
		phy_position_y += fr * abs_cos;
	}else {
		var fr = fall_rate * (life_time - alarm[0]);
		offs -= fr;
		phy_position_y += fr * abs_cos;
	}
	
	if(offs <= 0){
		instance_create_layer(x-8,y-8,layer,obj_water_drop);
		instance_destroy(shadow);
	}
	
}else {
	scr_pause_start(1);
}