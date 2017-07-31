///@description Determine distance to body and knockback point and state
if not global.pause{
	dis = distance_to_object(obj_body);

	//Only update direction if not dashing
	if dash == false{
	    dir = point_direction(x,y,obj_body.x,obj_body.y);
	}

	/// Enemy States
	if state != 3  and state != 2{
	    if dis > 100 and dis < 200 and dash == false{
	        state = 1;
        
	    }else if dis <= 100{
	        if dash_cd == false {
	            ///Dash activation
	            state = 2;
	        }else if dash == false{
	            state = 1;
	        }

	    }else if dis >= 200 and dash == false{
	        state = 0;
	    }
	}
    
	if prev_state != state{
	    prev_state = state;
	    state_change = true;
	}

}