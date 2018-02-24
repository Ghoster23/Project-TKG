if(window_get_fullscreen()){
	switch(room){
		default:
			scr_screen_adjust_fl(room_width,room_height);
		break;
		case rm_level:
		case rm_CH_boss:
			scr_screen_adjust_fl(global.roomwd,global.roomhg);
		break;
	}
}