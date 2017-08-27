//@description Get distance to player and update state
if not global.pause{
	dis = distance_to_object(global.body);
	dir = point_direction(x,y,global.body.x,global.body.y);

	/// Enemy States
	if state != 3 and not swing and alarm[2] == -1{
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
	
	if prev_state != state{
        prev_state = state;
        state_change = true;
    }

	///Die
    if e_hp <= 0 {
        global.act_enemies -= 1;
		global.kld_enemies += 1;
        state = 3;
        alarm[5] = 5;
        
    }
}