if(!global.pause){
	scr_pause_end(1);
	
	if(collided){
		instance_destroy(shadow);
		instance_destroy();
	}
	
}else {
	scr_pause_start(1);
	
}