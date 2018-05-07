vfx = (0.5 + global.current_column) * global.roomwd;
vfy = (0.5 + global.current_row)    * global.roomhg - 16;

if(zooming){
	if(zoomed){
		zooming = false;
		
		if(abs(cam_wd - cam_wd_c) > tolerance){
			cam_wd_c += (cam_wd - cam_wd_c) * rate;
			
			zooming = true;
		}else {
			cam_wd_c = cam_wd;
		}
		
		if(abs(cam_hg - cam_hg_c) > tolerance){
			cam_hg_c += (cam_hg - cam_hg_c) * rate;
			
			zooming = true;
		}else {
			cam_hg_c = cam_hg;
		}
		
		if(abs(x - vfx) > tolerance){		
			x += (vfx - x) * rate;
			
			zooming = true;
		}else {
			x = vfx;
			
		}
		
		if(abs(y - vfy) > tolerance){			
			y += (vfy - y) * rate;
			
			zooming = true;
		}else {
			y = vfy;
			
		}
		
		if(zooming == false){			
			zoomed  = false;
		}
	}else {
		zooming = false;
		
		if(abs(cam_wd_z - cam_wd_c) > tolerance){
			cam_wd_c -= (cam_wd_c - cam_wd_z) * rate;
			
			zooming = true;
		}else {
			cam_wd_c = cam_wd_z;
		}
		
		if(abs(cam_hg_z - cam_hg_c) > tolerance){
			cam_hg_c -= (cam_hg_c - cam_hg_z) * rate;
			
			zooming = true;
		}else {
			cam_hg_c = cam_hg_z;
		}
		
		if(abs(x - global.body.phy_position_x) > tolerance){		
			x += (global.body.phy_position_x - x) * rate;
			
			zooming = true;
		}else {
			x = global.body.phy_position_x;
			
		}
		
		if(abs(y - global.body.phy_position_y) > tolerance){			
			y += (global.body.phy_position_y - y) * rate;
			
			zooming = true;
		}else {
			y = global.body.phy_position_y;
			
		}
		
		if(zooming == false){
			zoomed = true;
		}
	}
	
	camera_set_view_size(view_camera[0],cam_wd_c,cam_hg_c);
	camera_set_view_border(view_camera[0],cam_wd_c div 2, cam_hg_c div 2);
}