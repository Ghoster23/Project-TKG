///@description Determine distance to player
if not global.pause{
	dis = distance_to_object(obj_body);
	dir = point_direction(x,y,obj_body.x,obj_body.y);
	bl_sight = collision_line(x,y,obj_body.x,obj_body.y,obj_solid_parent,true,true);

	/// Enemy States
	if state != 3{
	    if 80 < dis < 200 and not bl_sight{
			image_speed = 0.4;
	        state = 2;
        
	    }
	    if dis <= 64{
	        state = 0;

	    }
	    if dis >= 200 or bl_sight{
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