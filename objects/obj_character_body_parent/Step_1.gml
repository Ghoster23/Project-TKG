if(not global.pause){
	scr_get_input();
	
	rotation = point_direction(x,y,mouse_x,mouse_y);
	//is = 0.2666 * global.p_stats[stats.spd];
	
	//End Pause
	scr_pause_end(4);
	
	//Get direction
	if(state == 0 || state == 1 || (state == 2 && alarm[0] == -1)){
		//Get the axis
		xaxis = (right_key - left_key);
		yaxis = ( down_key -   up_key);

		//Calculate direction
		dir = point_direction( 0, 0, xaxis, yaxis);
	}
	
	//Orientation
	if(rotation > 315 or rotation < 45){ //Right    
		spr_side = 1;
	}
			
	else if(rotation < 135){ //Up
		spr_side = 0; 
	}
			
	else if(rotation < 225){ //Left
		spr_side = 3;     
	}
			
	else if(rotation < 315){ //Down
		spr_side = 2;        
	}

	/// Player States
	switch state {
		case 0: //Free
			len = 0;
			
			if(not stuck){
				if(dead){
					global.dead = true;
					state = 3;
				}else if(not(input)){
					state = 4;
					
					if(instance_exists(weapon)){
						weapon.state = 1;
					}
				}else if(dash_key && alarm[1] == -1 && (xaxis != 0 || yaxis != 0)){
					state = 2;
				}
			}else {
				state = 1;
			}
		break;
		case 1: //Stuck
			len = 0;
			
			if(not stuck){
				state = prev_state;
			}
		break;
		case 2: //Dash
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