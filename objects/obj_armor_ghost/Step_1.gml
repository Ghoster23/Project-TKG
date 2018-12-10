if(instance_exists(global.body)){
	dis = distance_to_object(global.body);
	player_dir = point_direction(x,y,global.body.x,global.body.y);
}