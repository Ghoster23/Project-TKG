if(zoomed){
	camera_set_view_size(view_camera[0],cam_wd,cam_hg);
	camera_set_view_border(view_camera[0],cam_wd div 2, cam_hg div 2);
	
	zoomed = false;
}else {
	camera_set_view_size(view_camera[0],cam_wd_z,cam_hg_z);
	camera_set_view_border(view_camera[0],cam_wd_z div 2, cam_hg_z div 2);
	
	zoomed = true;
}