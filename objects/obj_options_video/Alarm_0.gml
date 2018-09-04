///@description fullscreen

if global.fullscreen == "ON"{
	global.fullscreen = "OFF";
	window_set_fullscreen(false);
	
	with obj_screen_controller {
		scr_screen_res();
	}
}
else {
	global.fullscreen = "ON";
	window_set_fullscreen(true);
	
	with obj_screen_controller {
		scr_screen_res();
	}
}