///@description Determine distance to player, show hurt and knockback position
dis = distance_to_object(obj_body);

/// Enemy States
if not global.pause and go{
	if state != 2{
		image_speed = 0.2;
		if dis < 200{
		    state = 1;

		}else {
		    state = 0;
		}
		
		///Die
	    if e_hp <= 0 {
	        global.act_enemies -= 1;
                
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

	if flash == true{
		sprite_index = spr_slime_hit;
		image_speed = 0;
	}
}