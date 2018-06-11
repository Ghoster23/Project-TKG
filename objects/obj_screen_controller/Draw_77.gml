if(prev_t != t){
	scr_screen_res();
	prev_t = t;
}

if surface_exists(application_surface){
	draw_surface_ext(application_surface,global.Xoffset,global.Yoffset,1,1,0,c_white,1);
}