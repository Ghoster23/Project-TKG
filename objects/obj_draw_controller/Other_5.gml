if ds_exists(ds_depthgrid, ds_type_grid){
	ds_grid_destroy(ds_depthgrid);
}
if(surface_exists(global.fluid_surface)){
	surface_free(global.fluid_surface);
}