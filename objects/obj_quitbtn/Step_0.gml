if point_in_rectangle(mouse_x,mouse_y,x,y,x+21,y+22){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		show_debug_message("Quit");
		image_index=0;
		file_find_close();
		room_goto(rm_menu_1);
	}
}
else{
	image_index=0;
}