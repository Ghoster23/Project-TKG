if global.frozen=true{ 
    exit;
}

if global.new_room_saved==true{
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+55,y+25){
		image_index=1;
		if mouse_check_button_pressed(mb_left){
			show_debug_message("Test not yet working unfortunately");
			image_index=0;
		}
	}
	else{
		image_index=0;
	}
}