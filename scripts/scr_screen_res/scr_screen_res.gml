
#region App Surface
application_surface_draw_enable(false);

if(window_get_fullscreen()){
	s_wd = global.MonitorW;
	s_hg = global.MonitorH;
	
}else {	
	s_wd = window_get_width();
	s_hg = window_get_height();
}

switch room {
	case rm_level:
	case rm_lvl_editor_test:
		wd = lvl_view_wd;
		hg = lvl_view_hg;
		
		global.cam_ratio = round(s_hg/hg);
	break;
	
	default:
		wd = room_width;
		hg = room_height;
		
		if(s_hg/hg < s_wd/wd){
			global.cam_ratio = s_hg/hg;
		}else {
			global.cam_ratio = s_wd/wd;
		}
	break;
}

var sc_wd = wd * global.cam_ratio;
var sc_hg = hg * global.cam_ratio;

surface_resize(application_surface, sc_wd, sc_hg);

global.Xoffset = (s_wd - sc_wd)/2;
global.Yoffset = (s_hg - sc_hg)/2;
#endregion

#region GUI
display_set_gui_size(sc_wd,sc_hg);

global.gui_WD = display_get_gui_width();
global.gui_HG = display_get_gui_height();

global.gui_ratio = global.gui_WD / 640;
#endregion