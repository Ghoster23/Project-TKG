//@description Get distance to player and update state
if not global.pause{
	dis = distance_to_object(obj_body);
	dir = point_direction(x,y,obj_body.x,obj_body.y);
}

/// Enemy States
if state != 3 and not swing and alarm[2] == -1{
    if 40 < dis < 200{
		image_speed = 0.4;
        state = 1;
        
    }
		
	if dis <= 40 {
        state = 2;
		image_speed = 0;
			
    }
		
	if dis >= 200{
		image_speed = 0.4;
        state = 0;
			
    }
		
}