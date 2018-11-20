scroll_max_offset = string_height_ext(console_text,text_padding,console_w) + text_padding - console_max_h;
if(scroll_max_offset <= 0){
	scroll_max_offset = 0;
}
scroll_offset = scroll_max_offset;