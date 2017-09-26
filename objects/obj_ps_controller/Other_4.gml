if room == rm_menu_1 or room == rm_chsl or room == rm_dead{
	    surface_resize(application_surface, global.MonitorW,global.MonitorH);
	    global.Xoffset=0;
	    global.Yoffset=0;
    
}else if room == rm_level{
		scr_screen_res();
		
}