/// @description Clear the grid
if(ds_exists(global.fluid_grid,ds_type_grid)){
	ds_grid_clear(global.fluid_grid,0);	
}