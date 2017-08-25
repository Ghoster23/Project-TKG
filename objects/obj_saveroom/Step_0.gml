if global.frozen=true{ 
    exit;
}

if point_in_rectangle(mouse_x,mouse_y,x,y,x+91,y+21){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		show_debug_message("Save");
		image_index=0;
		scr_saveroom(global.lvl_room_type,global.lvl_room_number);
	}
}
else{
	image_index=0;
}