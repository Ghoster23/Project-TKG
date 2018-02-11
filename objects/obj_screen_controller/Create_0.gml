application_surface_draw_enable(false);
scr_unique_inst();

//Start
if(window_get_fullscreen()){
	global.MonitorW =  display_get_width();
	global.MonitorH = display_get_height();
	
	global.Xoffset = (global.MonitorW -  room_width)/2;
	global.Yoffset = (global.MonitorH - room_height)/2;
	
	t = 0;
}else {
	global.MonitorW =  window_get_width();
	global.MonitorH = window_get_height();
	
	global.Xoffset = (global.MonitorW -  room_width)/2;
	global.Yoffset = (global.MonitorH - room_height)/2;
	
	t = 1;
}

prev_t = t;

scr_screen_res();