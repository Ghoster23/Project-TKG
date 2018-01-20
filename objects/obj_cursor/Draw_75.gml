/*if window_get_fullscreen() {
	if room == rm_menu_1 or room == rm_char_select or room== rm_lvl_editor{
		draw_sprite_ext(spr_cursor,0,x * (display_get_gui_width() / room_width),y * (display_get_gui_height() / room_height),display_get_gui_width() / room_width, display_get_gui_height() / room_height,0,c_white,1);
	/*}else {*/
		draw_sprite_ext(spr_cursor,0,display_mouse_get_x(), display_mouse_get_y(),display_get_gui_width() / global.roomwd, display_get_gui_height() / global.roomhg,0,c_white,1);
	//}
/*}else {
	if room == rm_menu_1 or room == rm_char_select or room== rm_lvl_editor{
		draw_sprite_ext(spr_cursor,0,x * (display_get_gui_width() / room_width),y * (display_get_gui_height() / room_height),display_get_gui_width() / room_width, display_get_gui_height() / room_height,0,c_white,1);
	}else {
		draw_sprite_ext(spr_cursor,0,display_mouse_get_x(), display_mouse_get_y(),display_get_gui_width() / global.roomwd, display_get_gui_height() / global.roomhg,0,c_white,1);
	}
}