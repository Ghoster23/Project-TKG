application_surface_draw_enable(false);
scr_unique_inst();

//Room measurements
global.roomwd = 672;
global.roomhg = 416;

//Ratios
global.as_ratio = 1;
global.ratio    = 1;


//Start
if(window_get_fullscreen()){
	global.MonitorW =  display_get_width();
	global.MonitorH = display_get_height();
	global.as_ratio = global.MonitorW/global.MonitorH;
	
	t = 0;
}else {
	global.WindowW =  window_get_width();
	global.WindowH = window_get_height();
	global.as_ratio = global.WindowW/global.WindowH;
	
	t = 1;
}

show_debug_message(global.as_ratio);

lvl_view_wd = global.roomwd;
lvl_view_hg = global.roomhg;

camera_set_view_size(  room_get_camera(rm_level,0),lvl_view_wd      ,lvl_view_hg);
camera_set_view_border(room_get_camera(rm_level,0),lvl_view_wd / 2,lvl_view_hg / 2);
room_set_viewport(rm_level,0,true,0,0,lvl_view_wd,lvl_view_hg);

prev_t = t;

scr_screen_res();
display_set_gui_maximise();