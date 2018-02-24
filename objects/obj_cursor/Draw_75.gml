if window_get_fullscreen() {
	if(cursor){
		draw_sprite_ext(spr_cursor,0,
			x,
			y,
			ratio, 
			ratio,
			0,c_white,1);
	}else {		
		show_debug_message("Type: " + string(holder[0]) +
		                   "Sub Type: " + string(holder[1]) +
						   "Amount: " + string(holder[2]));
		
		scr_draw_item(holder[0], holder[1], holder[2],
		              x, y, ratio, ratio, 1);
	}	
}