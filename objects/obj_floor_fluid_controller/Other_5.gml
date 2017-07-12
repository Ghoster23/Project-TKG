/// @description Delete Grid
if ds_exists(global.fluid_grid, ds_type_grid) {
	ds_grid_destroy(global.fluid_grid);
}