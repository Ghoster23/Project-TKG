///@description Determine distance to player
if not global.pause{
	dis = distance_to_object(global.body);
	dir = point_direction(x,y,global.body.x,global.body.y);
	bl_sight = collision_line(x,y,global.body.x,global.body.y,obj_solid_parent,true,true);

	/// Enemy States
	if state != 3 and bow.image_speed == 0 and state != "stun"{
	    if 100 < dis < 200 and not bl_sight and not cd_arrow{
			image_speed = 0;
	        state = 2;
        
	    }
		
	    if dis <= 40{
			image_speed = 0.4;
	        state = 0;

	    }
		
	    if dis >= 200 or bl_sight {
			image_speed = 0.4;
	        state = 1;
	    }
	}

	if prev_state != state{
	    prev_state = state;
	    state_change = true;
	}
	
	///Die
    if e_hp <= 0 {
        state = 3;
        
    }
}