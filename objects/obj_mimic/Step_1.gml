if(not global.pause){
	x = phy_position_x;
	y = phy_position_y;

	///Die
    if(dead and state != 3){
        state = 3;
		alarm[5]     = 20;
		sprite_index = spr_mimic_d;		
    }

	///Enemy States
	switch state {
		case 0: //Hidden
			scr_interactable_step();
				
			if(interacted){
				state = 1;
				go    = true;
				
				draw_script = "NULL";
				hidden = false;
			}
		break;
			
		case 1: //Wake up
			if(go and sprite_index == spr_mimic_a and image_index >= 8){				
				phy_fixed_rotation = false;
				stat[stats.spd]    = 4;
					
				state  = 2;
				damage = 8;
					
				image_speed = 1;
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