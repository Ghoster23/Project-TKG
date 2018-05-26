///@description Determine distance to player
if(not global.pause){
	dis      = distance_to_object(global.body);
	bl_sight = collision_line(x,y,global.body.x,global.body.y,obj_above_ground_parent,true,true);
	
	///Die
    if(dead){
        state = 4;
        
    }

	///Enemy States
	switch state {
		case 0: //Idle
			if(dis > 300){
				state = 0;
			}else if(dis > 200){
				state = 2;
			}else if(dis > 100){
				state = 3;
			}else {
				state = 1;
			}
		break;
		
		case 1: //Flee
			if(dis > 300){
				state = 0;
				
			}else if(dis > 200){
				state = 2;
				
			}else if(dis > 100 and not bl_sight and weapon.alarm[0] == -1){
				state = 3;
				
			}
		break;
		
		case 2: //Advance
			if(dis < 100){
				state = 1;
				
			}else if(dis < 200 and not bl_sight and weapon.alarm[0] == -1){
				state = 3;
				
			}else if(dis > 300){
				state = 0;
				
			}
		break;
		
		case 3: //Aim
			if(not bl_sight and weapon.alarm[0] == -1 and weapon.wep_ammo > 0){
				state        = 4;
				weapon.shoot = true;
				
				dir     = point_direction(x,y,global.body.x,global.body.y);
				wep_dir = dir;
				
			}else {
				if(dis > 300){
					state = 0;
				}else if(dis > 200){
					state = 2;
				}else if(dis > 100){
					state = 3;
				}else {
					state = 1;
				}
			}
		break;
		
		case 4: //Shoot
			if(!instance_exists(tell)){
				if(dis > 300){
					state = 0;
				}else if(dis > 200){
					state = 2;
				}else {
					state = 1;
				}
			}
		break;
		
		case 5: //Dead
		break;
	}
	
	if(state < 3){
		dir     = point_direction(x,y,global.body.x,global.body.y);
		wep_dir = dir;
	}

	if prev_state != state{
	    prev_state = state;
	    state_change = true;
	}
}