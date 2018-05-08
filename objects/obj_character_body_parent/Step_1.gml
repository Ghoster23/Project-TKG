if(not global.pause){
	scr_get_input();
	rotation = point_direction(x,y,mouse_x,mouse_y);
	//is = 0.2666 * global.p_stats[stats.spd];
	
	//End Pause
	scr_pause_end(4);
	
	//Become Stuck
	if(stuck){
		state = 1;
	}
	
	//Get direction
	if(state == 0 || (state == 2 && !global.dash_cd)){
		//Get the axis
		xaxis = (right_key - left_key);
		yaxis = ( down_key -   up_key);

		//Calculate direction
		dir = point_direction( 0, 0, xaxis, yaxis);
	}

	/// Player States
	switch state {
		case 0: //Free
			if(global.p_stats[stats.hp] <= 0){
				state = 3;
			}else if(dash_key && (xaxis != 0 || yaxis != 0) &&
						alarm[0] == -1 && not global.dash_cd){
				state = 2;
			}else if(alarm[3] == -1 && not(input)){
				alarm[3] = 10 * room_speed;
			}else if(alarm[3] != -1 && input){
				alarm[3] = -1;
			}
		break;
		case 1: //Stuck
			if(not stuck){
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
		case 4: //Idle
			if(state_change){
				state_change = false;
				state        = prev_state;
				global.weapon.state = 0;
			}
			if(input){
				state = 0;
				global.weapon.state = 0;
			}
		break;
	}
	
	if(prev_state != state && state != 1){
	    prev_state = state;
	    state_change = true;
	}else {
		state_change = false;
	}
	
}else {
	if(state != 4 && obj_ig_menu_controller.state == "status"){
		prev_state   = state;
		state        = 4;
		state_change = true;
		global.weapon.state = 1;
	}
}