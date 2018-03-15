u = -1;
r = -1;
d = -1;
l = -1;

up    = false;
down  = false;
left  = false;
right = false;
	
adj = 0;

if(row > 0 && not (type < 2 or (type > 2 and type < 6) or type == 8 or type == 13 or type >= 15)){
	u = global.ds_roomgrid[# 1, (row - 1) * 8 + col]; //What type of room is up?
	
	show_debug_message("U: " + string(u));
	
	//Is there a room up?
	if(u != "NULL" && 
	   not ((u > 0 and u < 4) or (u > 5 and u < 9) or u == 11)){
		up = true;
		
		adj++;
	}
}

if(row < 7 && not ((type > 0 and type < 4) or (type > 5 and type < 9) or type == 11 or type >= 15)){
	d = global.ds_roomgrid[# 1, (row + 1) * 8 + col]; //What type of room is down?
	
	show_debug_message("D: " + string(d));
	
	//Is there a room down?
	if(d != "NULL" && not (d < 2 or (d > 2 and d < 6) or d == 8 or d == 13)){
		down = true;
		
		adj++;
	}
}

if(col > 0 && not (type == 0 or (type > 1 and type < 5) or type == 7 or type == 9 or type == 12 or type >= 15)){
	l = global.ds_roomgrid[# 1,   row * 8 + col - 1]; //What type of room is left?
	
	show_debug_message("L: " + string(l));
	
	//Is there a room left?
	if(l != "NULL" && not (l < 3 or (l > 4 and l < 7) or (l > 8 and l < 11))){
		left = true;
		
		adj++;
	}
}

if(col < 7 && not (type < 3 or (type > 4 and type < 7) or (type > 8 and type < 11) or type >= 15)){
	r = global.ds_roomgrid[# 1,   row * 8 + col + 1]; //What type of room is right?
	
	show_debug_message("R: " + string(r));
	
	//Is there a room right?
	if(r != "NULL" && not (r == 0 or (r > 1 and r < 5) or r == 7 or r == 9 or r == 12 or type >= 15)){
		right = true;
		
		adj++;
	}
}