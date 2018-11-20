if(boot){
	scr_follower_step();

	if(not global.pause){
		//Get poisoned
		if(!owner.inv && !owner.innoc){
			var tp = scr_fluid_detect_at_position(x,y);
			
			if(tp != -1){
				switch(tp){
					case fluid.poison:
						poison_counter++;
					break;
				
					case fluid.water:
						scr_status_apply(statuses.wet,3,owner);
					break;
				
					default:
					break;
				}
			}
		}
	
		if(poison_counter == prev_poison_counter && poison_counter > 0){
			poison_counter -= 0.25;
		
		}else if(poison_counter >= 30){
			scr_status_apply(statuses.poison,4,owner);
			poison_counter = 0;
		}
	
		prev_poison_counter = poison_counter;	
	}
}