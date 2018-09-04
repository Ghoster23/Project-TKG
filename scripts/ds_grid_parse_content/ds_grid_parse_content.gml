{
var gr = argument0;

//show_debug_message("Check if grid exists...");
if(!ds_exists(gr,ds_type_grid)){ return gr;}
//show_debug_message("Grid exists.");

var wd = ds_grid_width(gr);
var hg = ds_grid_height(gr);

//show_debug_message("Start at " + string(sx) + " " + string(sy));
//show_debug_message("End at " + string(fx) + " " + string(fy));

for(var i = 0; i < wd; i++){
	for(var j = 0; j < hg; j++){		
		//show_debug_message("Cell - " + string(i) + " " + string(j));
		gr[# i, j] = scr_parse_string(gr[# i, j]);
	}
}

return gr;
}