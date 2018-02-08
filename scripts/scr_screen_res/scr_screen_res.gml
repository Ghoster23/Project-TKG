if(window_get_fullscreen()){
	if(room == rm_level || room == rm_CH_boss){
		var i = global.MonitorW div global.roomwd;
	
		surface_resize(application_surface,global.roomwd * i,global.roomhg * i);

		global.Xoffset = (global.MonitorW - (global.roomwd)*i)/2;
		global.Yoffset = (global.MonitorH - (global.roomhg)*i)/2;
		
		display_set_gui_size(global.roomwd * i,global.roomhg * i);
	
	}else {
		var i = global.MonitorW / room_width;
	
		surface_resize(application_surface,room_width*i,room_height*i);

		global.Xoffset = (global.MonitorW - room_width  * i)/2;
		global.Yoffset = (global.MonitorH - room_height * i)/2;
		
	}
}else {
	var i = window_get_width()  / room_width;
	var j = window_get_height() / room_height;
	
	if(i < j){
		var s = i;
	}else {
		var s = j;
	}
	
	surface_resize(application_surface,room_width * s,room_height * s);

	global.Xoffset = (window_get_width()  - room_width  * i)/2;
	global.Yoffset = (window_get_height() - room_height * i)/2;
}