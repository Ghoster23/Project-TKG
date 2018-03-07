scr_unique_inst();
ds_depthgrid = 0;
ds_depthgrid = ds_grid_create(2,1);
global.fluid_surface = surface_create(global.roomwd,
	                                  global.roomhg);
outline_init();
camera = room_get_camera(room,0);
cam_wd = camera_get_view_width(camera);
cam_hg = camera_get_view_height(camera);