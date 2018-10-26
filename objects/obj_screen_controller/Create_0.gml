application_surface_draw_enable(false);
scr_unique_inst();

//Room measurements
global.roomwd = 672;
global.roomhg = 416;

//Ratios
global.rm_as_ratio = 1;

global.MonitorW =  display_get_width();
global.MonitorH = display_get_height();
global.as_ratio = global.MonitorW/global.MonitorH;
	
if(round(global.roomwd / global.roomhg) < round(global.as_ratio)){
	global.cam_ratio = round(global.MonitorH / global.roomhg);
	lvl_view_hg  = global.MonitorH / global.cam_ratio;
	lvl_view_wd  = lvl_view_hg * global.as_ratio;
}else {
	global.cam_ratio = round(global.MonitorW / global.roomwd);
	lvl_view_wd  = global.MonitorW / global.cam_ratio;
	lvl_view_hg  = lvl_view_wd / global.as_ratio;
}

//Start
if(global.fullscreen == "ON"){
	window_set_fullscreen(true);
	
	t = 0;
}else {
	window_set_fullscreen(false);
	
	t = 1;
}

game_rooms = [rm_level,rm_CH_boss,rm_lvl_editor_test];

for(var i = 0; i < 3; i++){
	var cam = room_get_camera(game_rooms[i],0);
		
	camera_set_view_size(cam,lvl_view_wd,lvl_view_hg);
	camera_set_view_border(cam,lvl_view_wd / 2,lvl_view_hg / 2);
	room_set_viewport(game_rooms[i],0,true,0,0,lvl_view_wd,lvl_view_hg);
}

prev_t = t;

scr_screen_res();