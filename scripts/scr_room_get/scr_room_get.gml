if(room == rm_level){
	var i = global.current_row * 8 + global.current_column;
	
	//Visited	
	if global.ds_roomgrid[# 2, i] == false {
		global.ds_roomgrid[# 2, i] = true;
	}
	
	return [global.ds_roomgrid[# 0, i],global.ds_roomgrid[# 1, i],global.ds_roomgrid[# 2, i]];
	
}else {
	return [[0,0],"?",404];
	
}
