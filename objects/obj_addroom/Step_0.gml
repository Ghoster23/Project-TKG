if global.frozen=true{ 
    exit;
}


if point_in_rectangle(mouse_x,mouse_y,x,y,x+91,y+21){
	image_alpha=0.5;
	if mouse_check_button_pressed(mb_left){
		show_debug_message("Add Room");
		image_alpha=1;
		scr_addroom();
	}
}
else{
	image_alpha=1;
}