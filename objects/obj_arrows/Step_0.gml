scr_get_input();

if point_in_triangle(mouse_x,mouse_y,391,230,375,246,391,261){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		image_index=0;
		event_perform_object(obj_charselect_ctrl,ev_keypress,vk_left);
	}
}
else if point_in_triangle(mouse_x,mouse_y,588,232,603,246,588,260){
	image_index=2;
	if mouse_check_button_pressed(mb_left){
		image_index=0;
		event_perform_object(obj_charselect_ctrl,ev_keypress,vk_right);
	}
}
else{
	image_index=0;
}


