switch m_state {
	case 0: //Stopped
	case 1: //Move
		//Zoom
		if(abs(zoom - t_zoom) > 0.01){
			zoom   = scr_approach(zoom,t_zoom,m_spd);
			cam_wd = cam_wd_o / zoom;
			cam_hg = cam_hg_o / zoom;
		}else {
			zoom   = t_zoom;
			cam_wd = cam_wd_o / zoom;
			cam_hg = cam_hg_o / zoom;
		}		
	break;
}

global.shake *= 0.5;

camera_set_view_pos(   view_camera[0], x - cam_wd / 2, y - cam_hg / 2);
camera_set_view_size(  view_camera[0],         cam_wd,         cam_hg);
camera_set_view_border(view_camera[0],     cam_wd / 2,     cam_hg / 2);