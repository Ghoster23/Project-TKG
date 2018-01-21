if(room == rm_level){
	var i = global.MonitorW / rm_wd;
	
	surface_resize(application_surface,rm_wd*i,rm_hg*i);

	global.Xoffset=(global.MonitorW-rm_wd*i)/2;
	global.Yoffset=(global.MonitorH-rm_hg*i)/2;
	
}else {
	var i = global.MonitorW / room_width;
	
	surface_resize(application_surface,room_width*i,room_height*i);

	global.Xoffset=(global.MonitorW-room_width*i)/2;
	global.Yoffset=(global.MonitorH-room_height*i)/2;
}

