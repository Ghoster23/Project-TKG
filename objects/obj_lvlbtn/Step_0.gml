if point_in_rectangle(mouse_x,mouse_y,x,y,x+82,y+17){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		room_goto(rm_lvl_editor);
	}
}
else{
	image_index=0;
}