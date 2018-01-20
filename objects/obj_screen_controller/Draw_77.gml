if surface_exists(application_surface){
	if global.fullscreen {
		draw_surface_ext(application_surface,global.Xoffset,global.Yoffset,1,1,0,c_white,1);
		
	}else {
		draw_surface_ext(application_surface,global.Xoffset,global.Yoffset,window_get_width() / display_get_width(),window_get_height() / display_get_height(),0,c_white,1);
	
	}
}