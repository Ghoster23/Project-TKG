///@description Returns the fluid at a given position in the room
///@param x
///@param y
{
var xx = argument0;
var yy = argument1;

var tl = instance_place( xx, yy, obj_fluid_tile);

show_debug_message("Tile: " + string(tl));

if(tl != noone and tl.act){
	xx = xx - xx mod 2;
	yy = yy - yy mod 2;

	with tl {
		var cx = xx - flx;
		var cy = yy - fly;
	
		return tiles_t[cy * h_cells + cx];
	}
}

return -1;
}