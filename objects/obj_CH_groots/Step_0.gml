depth = -y;

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
	global.st_stuck = false;
	global.st_stuck_d = 0;
	instance_destroy();

}

