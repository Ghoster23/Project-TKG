application_surface_draw_enable(false);

if(window_get_fullscreen()){
	s_wd = global.MonitorW;
	s_hg = global.MonitorH;
	
}else {	
	s_wd = global.WindowW;
	s_hg = global.WindowH;
}

switch room {
	case rm_level:
	case rm_lvl_editor_test:
	case rm_CH_boss:
		wd = lvl_view_wd;
		hg = lvl_view_hg;
		
		global.ratio = round(s_hg/hg);
	break;
	
	default:
		wd = room_width;
		hg = room_height;
		
		global.ratio = s_hg/hg;
	break;
}

show_debug_message(room_get_name(room) + " ratio: " + string(global.ratio));

var sc_wd = wd * global.ratio;
var sc_hg = hg * global.ratio;

surface_resize(application_surface, sc_wd, sc_hg);

global.Xoffset = (s_wd - sc_wd)/2;
global.Yoffset = (s_hg - sc_hg)/2;