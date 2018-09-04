if global.frozen=true{ 
    exit;
}

//left arrow
if point_in_rectangle(mouse_x,mouse_y,x,y,x+8,y+14){
	if mouse_check_button_pressed(mb_left){
			
		global.char--;
	}
}
//right arrow
if point_in_rectangle(mouse_x,mouse_y,x+35,y,x+43,y+14){
	if mouse_check_button_pressed(mb_left){
			
		global.char++;
	}
}
