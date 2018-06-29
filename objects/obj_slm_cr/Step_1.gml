///@description Determine distance to player, show hurt and knockback position
dis = distance_to_object(global.body);

/// Enemy States
if not global.pause and go{
	if state != 2{
		image_speed = 0.2;
		
		if dis < 200{
		    state = 1;

		}else {
		    state = 0;
		}
		
		if(stun){
			state = 6;
		}
		
		///Die
	    if dead and sprite_index != spr_slime_d{
	        sprite_index = spr_slime_d;
	        image_index = 0;
	        image_speed = 0.2;
	        state = 2;
        
	    }
		
		
	}
	
	if prev_state != state{
	    prev_state = state;
	    state_change = true;
	}

}