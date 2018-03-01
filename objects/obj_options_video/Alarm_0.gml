///@description fullscreen

if global.fullscreen == "ON"{
	global.fullscreen = "OFF";
	window_set_fullscreen(false);
	
	//display_set_gui_size(window_get_width()/room_width,window_get_height()/room_height);
}
else {
	global.fullscreen = "ON";
	window_set_fullscreen(true);
}