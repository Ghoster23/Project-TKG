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