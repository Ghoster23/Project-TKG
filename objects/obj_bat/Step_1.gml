///@description Determine distance to body and knockback point and state
if not global.pause{
	dis = distance_to_object(global.body);
	
	switch(state){
		case 0:
			dir = point_direction(x,y,global.body.x,global.body.y);
			
			if(100 <= dis && dis < 200){
				state = 1;
			}else if(dis < 100 && not dash_cd){
				state = 2;
			}
		break;
		case 1:
			dir = point_direction(x,y,global.body.x,global.body.y);
			
			if(dis < 100 && not dash_cd){
				state = 2;
			}else if(dis > 200){
				state = 0;
			}
		break;
		case 2:
		break;
		case 3:
		break;
	}
	
	if(dead){
		state = 3;
	}
    
	if(prev_state != state){
	    prev_state = state;
	    state_change = true;
	}

}