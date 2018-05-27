//@description Get distance to player and update state
if(not global.pause){
	x = phy_position_x;
	y = phy_position_y;
	
	dis = point_distance(x,y,global.body.x,global.body.y);

	///Die
    if(dead){
        state = 4;
    }

	if(state_check){
		state_check = false;
		
		///Enemy States
		switch state {
			case 0: //Idle
				if(dis > idle_r){
					state = 0;
				}else if(dis > swing_r){
					state = 1;
				}else if(weapon.wep_pat_state == 0){
					state = 2;
				}else {
					state = 2;
				}
			break;
		
			case 1: //Advance
				if(dis > idle_r){
					state = 0;
				
				}else if(dis > swing_r){
					state = 1;
				
				}else if(weapon.wep_pat_state == 0){
					state = 2;
				}
			break;
		
			case 2: //Attack
				if(weapon.wep_pat_state == 5){
					if(instance_exists(tell)){
						instance_destroy(tell);
					}
					
					state = 3;
				}
			break;
		
			case 3: //Retreat
				if(dis > idle_r){
					state = 0;
				}else if(dis > flee_r){
					state = 1;
				}else if(dis > swing_r){
					state = 3;
				}else if(weapon.wep_pat_state == 0){
					state = 2;
				}
			break;
		
			case 4: //Dead
			break;
		}

		if(prev_state != state){
		    prev_state = state;
		    state_change = true;
		}
		
		alarm[4] = 0.5 * room_speed;
	}
}