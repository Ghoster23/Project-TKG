if point_in_rectangle(mouse_x, mouse_y, x, y, x + boxWidth, y + text_height) and mouse_check_button_pressed(mb_left){
	
	obj_textbox.tag=real(tag);
	obj_textbox.answered=true;
	
	//delete the unnecessary objs
	with (obj_a_textbox){
		instance_destroy();
	}
	with (obj_answer) {
		instance_destroy();
	}
	
}
if visible == false and instance_exists(obj_a_textbox) and obj_a_textbox.visible == true{
	visible=true;
}
