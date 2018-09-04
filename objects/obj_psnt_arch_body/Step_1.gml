///@description Determine distance to player
if(not global.pause){
	x = phy_position_x;
	y = phy_position_y;
	
	dis      = point_distance(x,y,global.body.x,global.body.y);
	bl_sight = collision_line(x,y,global.body.x,global.body.y,obj_above_ground_parent,true,true);

	///Die
    if(dead){
        state = 5;
    }
	
	///Stun
    if(stun){
        state = 6;
    }

	if(state_check){
		state_check = false;
		
		///Enemy States
		switch state {
			case 0: //Idle
				if(dis > idle_r){
					state = 0;
				}else if(dis > aim_r){
					state = 2;
				}else if(dis > flee_r){
					state = 3;
				}else {
					state = 1;
				}
			break;
		
			case 1: //Flee
				if(dis > idle_r){
					state = 0;
				
				}else if(dis > aim_r){
					state = 2;
				
				}else if(dis > flee_r){
					state = 3;
				}
			break;
		
			case 2: //Advance
				if(dis > idle_r){
					state = 0;
				
				}else if(dis > aim_r){
					state = 2;
				
				}else if(dis > flee_r){
					state = 3;
				
				}else {
					state = 1;
				}
			break;
		
			case 3: //Aim
				if(not bl_sight and 
					instance_exists(weapon) and 
					weapon.alarm[0] == -1){
					state = 4;
				
				}else {
					if(dis > idle_r){
						state = 0;
					}else if(dis > aim_r){
						state = 2;
					}else if(dis > flee_r){
						state = 3;
					}else {
						state = 1;
					}
				}
			break;
		
			case 4: //Shoot
				if(weapon.alarm[0] != -1){
					state = 3;
					key[0] = false;
				}
			break;
		
			case 5: //Dead
			break;
			
			case 6: //Stun
				if(not stun){
					if(dis > idle_r){
						state = 0;
					}else if(dis > aim_r){
						state = 2;
					}else if(dis > flee_r){
						state = 3;
					}else {
						state = 1;
					}
				}
			break;
		}

		if(prev_state != state){
			prev_state = state;
		    state_change = true;
		}
		
		alarm[4] = 0.5 * room_speed;
	}
}