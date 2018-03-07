scr_unique_inst();
ds_depthgrid = 0;
ds_depthgrid = ds_grid_create(2,1);
global.fluid_surface = surface_create(surface_get_width(application_surface),
	                                  surface_get_height(application_surface));
outline_init();