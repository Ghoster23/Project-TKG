{
var pos = argument0;

var doors = global.ds_roomgrid[# 3, pos];

var u = doors[0];
var r = doors[3];
var d = doors[2];
var l = doors[1];

///Determine sprite
if global.ds_roomgrid[# 2, pos] {
	return (8 * d) + (4 * l) + (2 * u) + r;
}else {
	if pos - 8 >= 0 and not global.ds_roomgrid[# 2, pos - 8] {
		u = false;
	}
	if pos + 1 <= 63 and not global.ds_roomgrid[# 2, pos + 1] {
		r = false;
	}
	if pos + 8 <= 63 and not global.ds_roomgrid[# 2, pos + 8] {
		d = false;
	}
	if pos - 1 >= 0 and not global.ds_roomgrid[# 2, pos - 1] {
		l = false;
	}
	
	return (8 * d) + (4 * l) + (2 * u) + r;
}
}