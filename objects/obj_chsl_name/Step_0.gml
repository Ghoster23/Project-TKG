if point_in_rectangle(mouse_x,mouse_y,426,232,555,259){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		event_perform_object(obj_charselect_ctrl,ev_keypress,vk_enter);
	}
}
else{
	image_index=0;
}