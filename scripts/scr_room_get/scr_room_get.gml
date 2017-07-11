if room == rm_level{
	var i = 0;
	coords = global.ds_roomgrid[# 0, i];
	
	//Find the room
	while (coords[0] != global.current_row or coords[1] != global.current_column) and i<16{
		i += 1;
		coords = global.ds_roomgrid[# 0, i];
		
	}
	
	//Visited	
	if global.ds_roomgrid[# 2, i] == false{
		global.ds_roomgrid[# 2, i] = true;
		
	}
	
	return [global.ds_roomgrid[# 0, i],global.ds_roomgrid[# 1, i],global.ds_roomgrid[# 2, i]];
	
}else {
	return [[0,0],"?",404];
	
}
