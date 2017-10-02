if not global.pause {
	if alarm_0 != -1{
		alarm[0] = alarm_0;
		alarm_0 = -1;
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}

	if image_index >= 3 and image_speed > 0{
	    image_speed = 0;
		image_index = 4;

	}

	if image_index <= 1 and obj_CH_tree_state.state != 4{
		instance_destroy();
	}

	if(mouse_check_button_released(mb_left)){
	    obj_CH_tree_state.bene = false;
		obj_CH_tree_state.state = 1;
		global.st_stuck = 0;
		instance_destroy();

	}

}else {
	if alarm[0] != -1{
		alarm_0 = alarm[0];
		alarm[0] = -1;
	}
	
	if prev_image_speed == 0{
		prev_image_speed = image_speed;
		image_speed = 0;
	}
	
}