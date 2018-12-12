if go and not global.pause{

	if(instance_exists(global.body)){
		dis = distance_to_object(global.body);
		player_dir = point_direction(x,y,global.body.x,global.body.y);
		wep_dir += sin(degtorad(player_dir - wep_dir)) * turn_speed;
	}
	
}

