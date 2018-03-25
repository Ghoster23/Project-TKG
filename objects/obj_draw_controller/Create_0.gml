scr_unique_inst();
ds_depthgrid = 0;
ds_depthgrid = ds_grid_create(2,1);
global.fluid_surface = -1;
outline_init();

global.check = 0;

color_creep = make_color_rgb(1,67,53);