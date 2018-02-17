var target_wd = argument0;
var target_hg = argument1;
show_debug_message("adjusting");

var ar = target_wd / target_hg;

var ratio = 0;
var wr = round(global.MonitorW / target_wd);
var hr = round(global.MonitorH / target_hg);
show_debug_message(wr);
show_debug_message(hr);

if(wr > hr){
	target_hg = target_hg * hr;
	target_wd = target_hg * ar;
	global.ratio = hr;
	show_debug_message(hr);
}else {
	target_wd = target_wd * wr;
	target_hg = target_wd / ar;
	global.ratio = wr;
	show_debug_message(wr);
}

/*if(global.MonitorW mod target_wd != 0){
	var d = round(global.MonitorW / target_wd);
	target_wd = global.MonitorW/d;
}

if(global.MonitorH mod target_hg != 0){
	var d = round(global.MonitorH / target_hg);
	target_hg = global.MonitorH/d;
}*/

if(target_wd && 1){
	target_wd++;
}

if(target_hg && 1){
	target_hg++;
}

show_debug_message(target_wd);
show_debug_message(target_hg);


surface_resize(application_surface,target_wd,target_hg);
display_set_gui_size(target_wd,target_hg);

if(!window_get_fullscreen()){
	window_set_size(target_wd,target_hg);
}