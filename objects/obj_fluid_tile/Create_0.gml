cell_size = 32 div global.fluid_detail;

h_cells = global.fluid_detail;
v_cells = h_cells;

cell_count = h_cells * v_cells;

gx = x div cell_size;
gy = y div cell_size;

tiles   = [];
tiles_t = [];
tiles_d = [];

for(var i = 0; i < v_cells; i++){
	for(var j = 0; j < h_cells; j++){
		tiles[i * h_cells + j]   =  0;
		tiles_t[i * h_cells + j] = -1;
		tiles_d[i * h_cells + j] =  0;
	}
}

cell_data = tilemap_get(global.fluid_tlm, 0, 0);

act = false;