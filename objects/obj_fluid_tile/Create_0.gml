cell_size  = 32 div global.fluid_detail;

h_cells = global.fluid_detail;
v_cells = h_cells;

gx = x div cell_size;
gy = y div cell_size;

flx = x - x mod cell_size;
fly = y - y mod cell_size;

for(var i = 0; i < v_cells; i++){
	var line  = array_create(h_cells, 0);
	var linet = array_create(h_cells, -1);
	
	tiles[i]   = line;
	tiles_t[i] = linet;
	tiles_d[i] = line;
}

act = false;

colors[0] = make_color_rgb(122,199, 21); //Slime
colors[1] = make_color_rgb(  0,123,255); //Water
colors[2] = make_color_rgb(146,  0,  0); //Blood
colors[3] = make_color_rgb(178,255,250); //Ice

ox = x mod global.roomwd;
oy = y mod global.roomhg;

rx = x div global.roomwd;
ry = y div global.roomhg;