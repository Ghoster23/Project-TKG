grid_size  = global.fluid_detail;
inner_size = grid_size * grid_size;
cell_size  = 32 div grid_size;

for(var i = 0; i < inner_size; i++){
	tiles[i] = 0;
}

for(var i = 0; i < 8; i++){
	adj[i] = 0;
	
}

active = false;
check  = 0;
activate_adjacent = false;
once   = false;

colors[0] = make_color_rgb(102,167,18);

ox = x mod global.roomwd;
oy = y mod global.roomhg;

outline_init();