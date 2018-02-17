scr_unique_inst();

camera = room_get_camera(room,0);
cam_wd = camera_get_view_width(camera);
cam_hg = camera_get_view_height(camera);

cam_wd_z = cam_wd div 4;
cam_hg_z = cam_hg div 4;

cam_wd_c = cam_wd;
cam_hg_c = cam_hg;

zooming = false;
zoomed  = false;
rate = 0.3;
tolerance = 1;

vfx = x;
vfy = y;
ox = x;
oy = y;
stopped = true;
global.shake = 0;