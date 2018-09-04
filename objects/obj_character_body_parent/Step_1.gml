if(not global.pause){
	rotation = point_direction(x,y,obj_cursor.ir_mx,obj_cursor.ir_my);
	input    = obj_input_controller.input;
	
	//End Pause
	scr_pause_end(5);
	
	//Get direction
	if(state == 0 || state == 1 || (state == 2 && (alarm[0] == -1 || (dash_move and input)))){
		//Get the axis
		xaxis = (global.key_active[key_id.right] - global.key_active[key_id.left]);
		yaxis = (global.key_active[key_id.down] - global.key_active[key_id.up]);

		//Calculate direction
		dir = point_direction( 0, 0, xaxis, yaxis);
	}
	
	if(dead){
		state = 3;
	}

	/// Player States
	switch state {
		case 0: //Free
			len = 0;
			
			if(dead){
				state = 3;
				
			}else if(stuck){
				state = 1;
				
			}else if(input){
				if(global.key_active[key_id.dash] && alarm[1] == -1 && (xaxis != 0 || yaxis != 0)){
					state = 2;
				}
				
				alarm[4] = -1;
				
			}else if(alarm[4] == -1){
				alarm[4] = 3 * room_speed;
				
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
			global.dead = true;
		break;
		case 4: //Idle
			if(state_change){
				state_change = false;
				state        = prev_state;
				weapon.state = 0;
			}
			if(input){
				state = 0;
				weapon.state = 0;
			}
		break;
	}
	
	if(input){
		alarm[4] = -1;
	}	
}