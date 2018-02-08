if(prev_t != t){
	scr_screen_res();	
}

if surface_exists(application_surface){
	if(window_get_fullscreen()){
		draw_surface_ext(application_surface,global.Xoffset,global.Yoffset,1,1,0,c_white,1);
		t = 0;
	}else {
		draw_surface_ext(application_surface,global.Xoffset,global.Yoffset,window_get_width() / display_get_width(),window_get_width() / display_get_width(),0,c_white,1);
		t = 1;
	}
}