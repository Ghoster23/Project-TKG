///@description fullscreen

if global.fullscreen == "ON"{
				global.fullscreen = "OFF";
				window_set_fullscreen(false);
			}
			else {
				global.fullscreen = "ON";
				window_set_fullscreen(true);
			}