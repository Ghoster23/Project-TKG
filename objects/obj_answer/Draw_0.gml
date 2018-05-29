if visible==true{
	if point_in_rectangle(mouse_x, mouse_y, x, y, x + boxWidth, y + text_height)
	{
		draw_set_color(c_red);	
	}

	draw_set_font(fnt_text);
	draw_text_ext(x,y,text,stringHeight,boxWidth);

	draw_set_color(c_white);
}