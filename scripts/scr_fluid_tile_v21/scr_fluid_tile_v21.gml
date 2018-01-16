{
var i = argument0;
var j = argument1;

var u   = false;
var u_r = false;
var r   = false;
var d_r = false;
var d   = false;
var d_l = false;
var l   = false;
var u_l = false;

var ad  = 0;
var val = 0;

//Adjacents
///Up
if(tiles[i,j-1]){
	u = true;
	ad++;
		
}

///Up and Right
if(tiles[i+1,j-1]){
	u_r = true;
	ad++;
		
}

///Right
if(tiles[i+1,j]){
	r = true;
	ad++;
		
}

///Down and Right
if(tiles[i+1,j+1]){
	d_r = true;
	ad++;
		
}

///Down
if(tiles[i,j+1]){
	d = true;
	ad++;
		
}

///Down and Left
if(tiles[i-1,j+1]){
	d_l = true;
	ad++;
		
}

///Left
if(tiles[i-1,j]){
	l = true;
	ad++;
		
}

///Up and Left
if(tiles[i-1,j-1]){
	u_l = true;
	ad++;
		
}

///Determine sprite
if ad > 5 {
	if ad == 8 {
		return 15;
	}
	
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
}