grid_size  = global.fluid_detail;
cell_size  = 32 div grid_size;
array_len  = grid_size * grid_size;

for(var i = 0; i < array_len; i++){
	tiles[i] = 0;
}

active = false;

colors[0] = make_color_rgb(122,199,21);
colors[1] = make_color_rgb(0,123,255);
colors[2] = make_color_rgb(146,0,0);

ox = x mod global.roomwd;
oy = y mod global.roomhg;

rx = x div global.roomwd;
ry = y div global.roomhg;