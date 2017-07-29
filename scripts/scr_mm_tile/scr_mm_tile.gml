pos = argument0;

doors = global.ds_roomgrid[# 3, pos];

u = doors[0];
r = doors[3];
d = doors[2];
l = doors[1];

///Determine sprite
if global.ds_roomgrid[# 2, pos] {
	return (8 * d) + (4 * l) + (2 * u) + r;
}else {
	if not global.ds_roomgrid[# 2, pos - 8] {
		u = false;
	}
	if not global.ds_roomgrid[# 2, pos + 1] {
		r = false;
	}
	if not global.ds_roomgrid[# 2, pos + 8] {
		d = false;
	}
	if not global.ds_roomgrid[# 2, pos - 1] {
		l = false;
	}
	
	return (8 * d) + (4 * l) + (2 * u) + r;
}