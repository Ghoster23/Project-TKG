if(room == rm_char_select){
	global.char++;
	global.char = global.char % 12;
	show_debug_message(scr_chsl_names());
}