if(not global.pause){
	scr_get_input();
	rotation = point_direction(x,y,mouse_x,mouse_y);
	
	//Become Stuck
	if(global.status[1,0] != 0){
		state = 1;
	}

	/// Player States
	switch state {
		case 0: //Free
			if(global.hp <= 0){
				state = 3;
			}else if(dash_key && alarm[0] == -1 && not global.dash_cd){
				state = 2;
			}
		break;
		case 1: //Stuck
			if(global.status[1,0] == 0){
				state = prev_state;
			}
		break;
		case 2: //Dash
			if(alarm[0] == -1){
				state = 0;
			}
		break;
		case 3: //Dead
		break;
	}
	
	if(prev_state != state && state != 1){
	    prev_state = state;
	    state_change = true;
	}else {
		state_change = false;
	}
}