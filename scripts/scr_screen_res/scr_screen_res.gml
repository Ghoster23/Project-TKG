show_debug_message("MW" + string(global.MonitorW));
show_debug_message("MH" + string(global.MonitorH));

var i = global.MonitorW / rm_wd;

global.Xoffset = (global.MonitorW - global.roomwd) / 2;
global.Yoffset = (global.MonitorH - global.roomhg) / 2;

/*while(global.MonitorW >= (rm_wd - 16) * (i - 1)){
	i++;
}*/

surface_resize(application_surface,rm_wd*i,rm_hg*i);
global.Xoffset=(global.MonitorW-rm_wd*i)/2;
global.Yoffset=(global.MonitorH-rm_hg*i)/2;