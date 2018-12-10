if(scr_unique_inst()) {exit;}

//Dungeon room measurements
dr_wd = global.roomwd;
dr_hg = global.roomhg;

//Get camera
camera = room_get_camera(room,0);
cam_wd = camera_get_view_width(camera);
cam_hg = camera_get_view_height(camera);

//Movement
m_spd = 0.25;

switch(room){
	case rm_level:
		x = 4.5 * global.roomwd;
		y = 4.5 * global.roomhg - 16;
	break;
	
	default:
		x = room_width  / 2;
		y = room_height / 2;
	break;
}

//Position
cam_x_c = x;
cam_y_c = y;
cam_x_s = x;
cam_y_s = y;
cam_x_t = x;
cam_y_t = y;

target = noone;

//Zoom
cam_wd_o = cam_wd;
cam_hg_o = cam_hg;

zoom = 1;
rate = 0.3;
tolr = 1;

t_zoom = 1;

cam_wd_z = cam_wd div zoom;
cam_hg_z = cam_hg div zoom;

//Shake
global.shake = 0;

//States
m_state = 0;
z_state = 0;