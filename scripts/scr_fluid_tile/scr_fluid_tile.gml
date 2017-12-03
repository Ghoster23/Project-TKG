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

wd = 168;
hg = 104;

//Adjacents
///Up
if gy - 1 >= 0 and global.fluid_grid[# gx, gy - 1] {
	u = true;
	ad ++;
}

///Up and Right
if gx + 1 < wd and gy - 1 >= 0 and global.fluid_grid[# gx + 1, gy - 1] {
	u_r = true;
	ad ++;
}

///Right
if gx + 1 < wd and global.fluid_grid[# gx + 1, gy] {
	r = true;
	ad ++;
}

///Down and Right
if gx + 1 < wd and gy + 1 < hg and global.fluid_grid[# gx + 1, gy + 1] {
	d_r = true;
	ad ++;
}

///Down
if gy + 1 < hg and global.fluid_grid[# gx, gy + 1] {
	d = true;
	ad ++;
}

///Down and Left
if gx - 1 >= 0 and gy + 1 < hg and global.fluid_grid[# gx - 1, gy + 1] {
	d_l = true;
	ad ++;
}

///Left
if gx - 1 >= 0 and global.fluid_grid[# gx - 1, gy] {
	l = true;
	ad ++;
}

///Up and Left
if gx - 1 >= 0 and gy - 1 >= 0 and global.fluid_grid[# gx - 1, gy - 1] {
	u_l = true;
	ad ++;
}

///Determine sprite
if ad > 5 {
	if ad >= 6 and not (u and r and l and d){
		if not u{
			return 13;
		}
		if not r{
			return 14;
		}
		if not l{
			return 11;
		}
		if not d{
			return 7;
		}
	}
	if not u_l{
		if not u{
			return 13;
		}
		if not l{
			return 11;
		}
		
		return 18;
	}
	if not u_r{
		if not u{
			return 13;
		}
		if not r{
			return 14;
		}
		return 19;
	}
	if not d_l{
		if not d{
			return 7;
		}
		if not l{
			return 11;
		}
		return 17;
	}
	if not d_r{
		if not d{
			return 7;
		}
		if not r{
			return 14;
		}
		return 16;
	}

	return 15;
}else {
	return (8 * d) + (4 * l) + (2 * u) + r;
}
