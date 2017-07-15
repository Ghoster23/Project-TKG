gx = argument0;
gy = argument1;

u = false;
u_r = false;
r = false;
d_r = false;
d = false;
d_l = false;
l = false;
u_l = false;
ad = 0;



//Adjacents
///Up
if global.fluid_grid[# gx, gy - 1] == type {
	u = true;
	ad ++;
}

///Up and Right
if global.fluid_grid[# gx + 1, gy - 1] == type {
	u_r = true;
	ad ++;
}

///Right
if global.fluid_grid[# gx + 1, gy] == type {
	r = true;
	ad ++;
}

///Down and Right
if global.fluid_grid[# gx + 1, gy + 1] == type {
	d_r = true;
	ad ++;
}

///Down
if global.fluid_grid[# gx, gy + 1] == type {
	d = true;
	ad ++;
}

///Down and Left
if global.fluid_grid[# gx - 1, gy + 1] == type {
	d_l = true;
	ad ++;
}

///Left
if global.fluid_grid[# gx - 1, gy] == type {
	l = true;
	ad ++;
}

///Up and Left
if global.fluid_grid[# gx - 1, gy - 1] == type {
	u_l = true;
	ad ++;
}

///Determine sprite
if (8 * d) + (4 * l) + (2 * u) + r == 0 and (u_l or u_r or d_l or d_r){
	if not u_l{
		return 14;
	}
	if not u_r{
		return 13;
	}
	if not d_l{
		return 10;
	}
	if not d_r{
		return 11;
	}
}else {
	return (8 * d) + (4 * l) + (2 * u) + r;
}
