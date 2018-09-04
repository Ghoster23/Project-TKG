///@description Determine distance to body and knockback point and state
if not global.pause{
	dis = distance_to_object(global.body);
	
	switch(state){
		case 0: //Idle							  
			los = collision_line(phy_position_x,phy_position_y,
								 global.body.x,global.body.y,
								 obj_wall_parent,true,false);
			
			if(alarm[5] == -1){
				if(los == noone){
					dir = point_direction(phy_position_x,phy_position_y,
									      global.body.phy_position_x,global.body.phy_position_y);
									  
					state = 1;
				}else {
					if(irandom(10) < 3){
						dir = random_range(0,360);
					
						state = 1;
					}
				}
			}
		break;
		
		case 1: //Traveling
		break;
		
		case 2: //Fallen
		break;
		
		case 3: //Phasing
			if(ph_state == 3 and image_speed == 0){
				state = 1;
			}
		break;
		
		case 4: //Anchor
		break;
		
		case 5: //Dead
		break;
	}
	
	if(dead){
		state = 5;
	}
    
	if(prev_state != state){
	    prev_state = state;
	    state_change = true;
	}

}