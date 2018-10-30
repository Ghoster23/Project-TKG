{
var cs = cell_size;

var hc = h_cells;
var vc = v_cells;

col_grid = [];

var ch = instance_create_layer( x, y, layer, obj_fld_col_checker);

for(var i = 0; i < vc; i++){
	var line = array_create(hc, 0);
	
	for(var j = 0; j < hc; j++){
		ch.x = x + j * cs;
		ch.y = y + i * cs;
		
		line[j] = place_meeting( x, y, ch);
	}
	
	col_grid[i] = line;
}

instance_destroy(ch);
}