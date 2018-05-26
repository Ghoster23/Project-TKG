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

	if(state_check){
		state_check = false;
		
		///Enemy States
		switch state {
			case 0: //Idle
				if(dis > idle_r){
					state = 0;
				}else if(dis > aim_r){
					state = 2;
				}else if(dis > idle_r){
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
				
				}else if(dis > idle_r){
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
				if(not bl_sight and !weapon.wep_pat_state and weapon.wep_ammo > 0){
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
				if(weapon.wep_pat_state == 3){
					state = 3;
				}
			break;
		
			case 5: //Dead
			break;
		}

		if(prev_state != state){
			show_debug_message("Prev_State: " + string(prev_state));
			show_debug_message("State: " + string(state));
		    prev_state = state;
		    state_change = true;
		}
		
		alarm[4] = 0.5 * room_speed;
	}
}