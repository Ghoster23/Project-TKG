///@description Returns the fluid at a given position in the room
///@param x
///@param y
{
var xx = argument0;
var yy = argument1;

var tl = instance_place( xx, yy, obj_fluid_tile);

if(tl != noone and tl.act){
	with tl {
		var cx = xx div cell_size - gx;
		var cy = yy div cell_size - gy;
		var ind = cy * h_cells + cx;
		
		if(0 <= ind and ind < 256){
			return tiles_t[ind];
		}
	}
}

return -1;
}