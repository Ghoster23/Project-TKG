//@description Get distance to player and update state
if not global.pause{
	dis = distance_to_object(global.body);
	dir = point_direction(x,y,global.body.x,global.body.y);

	/// Enemy States
	if state != 3 and not swing and alarm[4] == -1 and state != "stun"{
	    if 30 < dis < 200{
			image_speed = 0.4;
	        state = 1;
        
	    }
		
		if dis <= 15 {
	        state = 2;
			image_speed = 0;
			
	    }
		
		if dis >= 200{
			image_speed = 0.4;
	        state = 0;
			
	    }
		
	}
	
	if(dead){
		state = 3;
	}
	
	if prev_state != state{
        prev_state = state;
        state_change = true;
    }
}