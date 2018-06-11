application_surface_draw_enable(false);
scr_unique_inst();

//Room measurements
global.roomwd = 672;
global.roomhg = 416;

//Ratios
global.rm_as_ratio = 1;

//Start
if(window_get_fullscreen()){
	global.MonitorW =  display_get_width();
	global.MonitorH = display_get_height();
	global.as_ratio = global.MonitorW/global.MonitorH;
	global.ratio = round(global.MonitorW / global.roomwd);
	
	lvl_view_wd = global.MonitorW / global.ratio;
	
	t = 0;
}else {
	global.WindowW =  window_get_width();
	global.WindowH = window_get_height();
	global.as_ratio = global.WindowW/global.WindowH;
	global.ratio = round(global.WindowW / global.roomwd);
	
	lvl_view_wd = global.WindowW / global.ratio;
	
	t = 1;
}

//lvl_view_wd = global.roomwd;
lvl_view_hg = lvl_view_wd / global.as_ratio;

game_rooms = [rm_level,rm_CH_boss,rm_lvl_editor_test];

for(var i = 0; i < 3; i++){
var cam = room_get_camera(game_rooms[i],0);
		
	camera_set_view_size(cam,lvl_view_wd,lvl_view_hg);
	camera_set_view_border(cam,lvl_view_wd / 2,lvl_view_hg / 2);
	room_set_viewport(game_rooms[i],0,true,0,0,lvl_view_wd,lvl_view_hg);
}

prev_t = t;

scr_screen_res();
display_set_gui_maximise();