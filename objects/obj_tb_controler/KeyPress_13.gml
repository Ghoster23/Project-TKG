/// @description print the ds_grid
for(i=0;i<20;i++){
	for(j=0;j<4;j++){
		print=ds_grid_get(global.dialg_grid, j, i);
		show_debug_message(print);
	}

}