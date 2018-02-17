if(window_get_fullscreen()){
	if(room == rm_level || room == rm_CH_boss){
		application_surface_draw_enable(false);
		
		var i = round(global.MonitorW / global.roomwd);
	
		surface_resize( application_surface, global.roomwd * i, global.roomhg * i);

		global.Xoffset = (global.MonitorW - global.roomwd * i) / 2;
		global.Yoffset = (global.MonitorH - global.roomhg * i) / 2;
		
		display_set_gui_size(global.roomwd * i,
		                     global.roomhg * i);
	}else {
		application_surface_draw_enable(false);
		
		var i = global.MonitorW / room_width;
	
		surface_resize(application_surface,room_width * i,room_height * i);

		global.Xoffset = (global.MonitorW - (room_width )*i)/2;
		global.Yoffset = (global.MonitorH - (room_height)*i)/2;
		
		display_set_gui_size(room_width * i,room_height * i);
	}
}else {
	application_surface_draw_enable(true);
}