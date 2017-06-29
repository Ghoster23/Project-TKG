if room = rm_level{
	var rmx = floor(obj_body.x) div global.roomwd;
	var rmy = floor(obj_body.y) div global.roomhg;
	var i = 0;
	
	//Find the room
	while global.ds_roomgrid[# 0, i] != [rmx,rmy]{
		i += 1;
	}
	
	//Visited	
	if global.ds_roomgrid[# 3, i] == false{
		global.ds_roomgrid[# 3, i] = true;
	}
	
}else {
	return [0,0];
}