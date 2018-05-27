if(not global.pause){
	x = phy_position_x;
	y = phy_position_y;

	///Die
    if(stat[stats.hp] <= 0){
        state = 3;
    }

	///Enemy States
	switch state {
		case 0: //Hidden
			scr_interactable_step();
				
			if(interacted){
				state = 1;
				go    = true;
				
				draw_script = null;
			}
		break;
			
		case 1: //Wake up
			if(sprite_index != spr_mimic_a){
				image_speed  = .9;
				sprite_index = spr_mimic_a;
				
				phy_fixed_rotation = false;
				stat[stats.spd]    = 4;
					
			}else if(image_index <= 8){
				state = 2;
			}
		break;
		
		case 2: //Active

		break;

		case 3: //Dead
		break;
	}

	if(prev_state != state){
		prev_state = state;
		state_change = true;
	}
}