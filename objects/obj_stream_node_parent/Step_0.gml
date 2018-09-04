if(!global.pause){
	scr_pause_end(1);
	
	visible = false;
	
	if(collided){ destroyed = true; }
	
}else {
	scr_pause_start(1);
	
}