cell_size  = 32 div global.fluid_detail;

h_cells = global.fluid_detail;
v_cells = h_cells;

cell_count = h_cells * v_cells;

gx = x div cell_size;
gy = y div cell_size;

flx = (x - x mod cell_size) div cell_size;
fly = (y - y mod cell_size) div cell_size;

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

colors[0] = make_color_rgb(122,199, 21); //Slime
colors[1] = make_color_rgb(  0,123,255); //Water
colors[2] = make_color_rgb(146,  0,  0); //Blood
colors[3] = make_color_rgb(178,255,250); //Ice

ox = x mod global.roomwd;
oy = y mod global.roomhg;

rx = x div global.roomwd;
ry = y div global.roomhg;