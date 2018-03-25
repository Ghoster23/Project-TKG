if(not global.pause){
	scr_pause_end(0);
	
	if(obj_room_controller.state == 1){
		phy_active = true;
		
		if(image_index < 8){
			image_speed = 1;
			
		}else if (image_index >= 8){
			image_index = 9;
			image_speed = 0;
		}
	}
	
	if(obj_room_controller.state == 0){
		if(image_index > 1){
			image_speed = -1;
		}else if(image_index <= 1){
			image_index = 0;
			image_speed = 0;
			phy_active = false;
		}
	}
	
}else {
	scr_pause_start(0);
	
}