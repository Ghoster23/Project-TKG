if(not global.pause){
	scr_pause_end(alarm_count);
	
	if(instance_exists(owner)){
		switch(state){
			case 0: //Drawn
				
			
			break;
			case 1: //Stowed
				
			break;
		}
	
	}else {
		instance_destroy();
	}
	
}else {
	scr_pause_start(alarm_count);
}