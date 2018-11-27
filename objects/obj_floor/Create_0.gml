#region Floor
image_speed   = 0;
floor_sprite  = -1;
floor_surface = surface_create(21*32,13*32);
first_time    = true;

generator = noone;

outline_init();

dirt_color = make_color_rgb(145,101,80);
#endregion

#region Fluid
//Squares
h_sqrs = sprite_width  div 32;
v_sqrs = sprite_height div 32;

sqrs = [];

//Cells
cell_size = 32 div global.fluid_detail;
cell_data = tilemap_get(global.fluid_tlm, 0, 0);

sqr_h_cells = global.fluid_detail;
sqr_v_cells = sqr_h_cells;

sqr_cell_count = sqr_h_cells * sqr_v_cells;

cells_p_line = h_sqrs * sqr_h_cells;
cells_p_colm = v_sqrs * sqr_v_cells;

tiles   = [];
tiles_t = [];
tiles_d = [];

//Positioning
gx = x div cell_size;
gy = y div cell_size;

for(var i = 0; i < v_sqrs; i++){
	for(var j = 0; j < h_sqrs; j++){
		sqrs[i * h_sqrs + j] = false;
		
		for(var k = 0; k < sqr_v_cells; k++){
			for(var l = 0; l < sqr_h_cells; l++){
				var ind = (i * sqr_v_cells + k) * cells_p_line + j * sqr_h_cells + l;
				
				tiles  [ind] =  0;
				tiles_t[ind] = -1;
				tiles_d[ind] =  0;
			}
		}
	}
}

cell_datas = [];

for(var i = 0; i < fluid.count + 1; i++){
	cell_datas[i] = tile_set_index(cell_data, i);
}
#endregion