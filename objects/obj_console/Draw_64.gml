// You can write your code in this editor
/*
draw_text(display_mouse_get_x(),display_mouse_get_y(),"x: "+string(display_mouse_get_x()) + " y: "+string(display_mouse_get_y()));
draw_text(display_mouse_get_x(),display_mouse_get_y()+40,string(display_get_gui_height()));
*/
//================ commandline bar =================
draw_set_halign(fa_left)
draw_set_valign(fa_top)

//black_backdrop
draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(cmdline_right, cmdline_bottom, cmdline_left, cmdline_top, false);

//white outline
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(cmdline_right, cmdline_bottom, cmdline_left, cmdline_top, true);

//text
draw_set_color(c_white);
draw_set_font(fnt_console);
draw_text_ext(cmdline_left + text_padding, cmdline_top + console_h/2 - 10, cmdline_text, 0, console_w - text_padding);

//text pointer (tp)
if(tp_visible == true or selected==false){
	draw_set_color(c_white);
	var st_w      = string_width_ext(cmdline_text, 0, console_w);
	var st_h      = string_height_ext("Hello", 0, console_w);
	var tp_left   = st_w + cmdline_left + text_padding;
	var tp_bottom = cmdline_top + console_h/2 - 12 + st_h;
	draw_rectangle(tp_left+2, tp_bottom , tp_left + 10, tp_bottom - 2, false);
}


//================ button for showing console log =================

//black_backdrop
draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(logbtn_right, logbtn_bottom, logbtn_left, logbtn_top, false);

//white outline
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(logbtn_right, logbtn_bottom, logbtn_left, logbtn_top, true);

//seta 
if(show_log == true){
	tri3y = logbtn_bottom - tri_padding;
}
else{
	tri3y = logbtn_top + tri_padding;
}
draw_set_color(c_white);
draw_line_width(tri1x,tri1y,tri3x,tri3y,4);
draw_line_width(tri2x,tri2y,tri3x,tri3y,4);

//================ console log =================
if(show_log == true){
	
	//black_backdrop
	draw_set_color(c_black);
	draw_set_alpha(0.85);
	draw_rectangle(logbtn_left, cmdline_top - log_h, cmdline_right, logbtn_top, false);

	//white outline
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_rectangle(logbtn_left, cmdline_top - log_h, cmdline_right, logbtn_top, true);
	
	//set up mask for this window
	scr_mask_ini();
	
	//the area where drawing is allowed
	draw_set_alpha(0.8);
	draw_rectangle(logbtn_left, cmdline_top - log_h, cmdline_right, logbtn_top, false);
	
	scr_mask_draw();  
	
	//console log text
	draw_set_color(c_white);
	draw_set_font(fnt_console);
	draw_set_alpha(1);
	draw_text_ext(cmdline_left + text_padding, cmdline_top - log_h - scroll_offset + text_padding/2 , console_text, text_padding, console_w - text_padding);
	
	scr_mask_end();


	//================ scroll bar =================
	scrollbar_bottom = logbtn_top - 20;
	scrollbar_top    = cmdline_top - log_h + 20;
	scrollbar_len    =  scrollbar_bottom - scrollbar_top;
	mid_pointx       = logbtn_left + logbtn_w/2;
	
	draw_set_color(c_white);
	draw_set_alpha(0.4);
	draw_line(mid_pointx, scrollbar_bottom , mid_pointx, scrollbar_top);
	draw_set_alpha(1);
	draw_rectangle(mid_pointx - scrollbar_w/2, mid_pointy - scrollbar_h/2, mid_pointx + scrollbar_w/2, mid_pointy + scrollbar_h/2, false);
}


//================ auto_sguestions popup =================
if(auto_commands != -1){
	
	//black_backdrop
	draw_set_color(c_black);
	draw_set_alpha(0.85);
	draw_rectangle(cmdline_left, cmdline_top - auto_popup_height, cmdline_left + auto_popup_width, cmdline_top, false);

	//white outline
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_rectangle(cmdline_left, cmdline_top - auto_popup_height, cmdline_left + auto_popup_width, cmdline_top, true);
	
	//selection
	var selection_h = auto_popup_height/auto_commands_n;
	draw_set_alpha(1);
	draw_rectangle(cmdline_left, cmdline_top - (auto_i*selection_h) - selection_h, cmdline_left + auto_popup_width, cmdline_top - auto_i*selection_h, true);
	draw_set_alpha(0.1);
	draw_rectangle(cmdline_left, cmdline_top - (auto_i*selection_h) - selection_h, cmdline_left + auto_popup_width, cmdline_top - auto_i*selection_h, false);
	
	//text
	draw_set_color(c_white);
	draw_set_font(fnt_console);
	draw_set_alpha(0.6);
	for(var i = 0; i < auto_commands_n; i++){
		draw_text_ext(cmdline_left + text_padding, (cmdline_top - 22) - i*string_height("Aa") , auto_commands[i], text_padding, console_w - text_padding);
	}
}

	draw_set_alpha(1);
