grid_size = 2 * global.fluid_detail;
inner_size = grid_size - 2;
cell_size = 32 div inner_size;

for(var i = 0; i < grid_size; i++){
	for(var j = 0; j < grid_size; j++){
		tiles[i,j] = 0;
	}
}

for(var i = 0; i < 8; i++){
	adj[i] = 0;
	
}

active = false;
once   = false;