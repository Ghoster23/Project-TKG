grid_size  = global.fluid_detail;
cell_size  = 32 div grid_size;
array_len  = grid_size * grid_size;

for(var i = 0; i < array_len; i++){
	tiles[i] = 0;
}

active = false;

colors[0] = make_color_rgb(102,167,18);

ox = x mod global.roomwd;
oy = y mod global.roomhg;

rx = x div global.roomwd;
ry = y div global.roomhg;

outline_init();