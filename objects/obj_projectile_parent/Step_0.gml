if(!global.pause){
	scr_pause_end(1);
	
	if(!collided){
		offs -= fall_rate;
	}else {
		offs -= fall_rate * 16; 
	}
	
	if(offs <= 0){
		instance_destroy(shadow);
	}
	
}else {
	scr_pause_start(1);
}