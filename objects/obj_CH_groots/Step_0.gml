if not global.pause {
	scr_get_input();
	
	scr_pause_end(alarm_count);
	
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

	if(attack_key){
	    obj_CH_tree_state.bene = false;
		obj_CH_tree_state.state = 1;
		instance_destroy();
	}

}else {
	scr_pause_start(alarm_count);
	
}