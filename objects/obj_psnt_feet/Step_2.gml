if(instance_exists(owner)){
	x = owner.phy_position_x;
	y = owner.phy_position_y;
}

if(not global.pause){
	//Get poisoned
	if(instance_exists(owner) and not owner.inv && not owner.innoc && not owner.dead){
		var tile = instance_place( x, y, obj_fluid_tile);
			
		if(tile != noone){
			with(tile){
				if(act){
					/*var px = (other.x - x)     div cell_size;
					var py = (other.y + 9 - y) div cell_size;
					
					if(0 <= px and px < grid_size and 0 <= py and py < grid_size){
						var type = tiles_t[px + py * grid_size];
			
						if(type == 0){
							other.poison_counter++;
						}else if(type == 1){
							scr_status_apply(statuses.wet,5,other.owner);
						}
					}*/
					//FIX ME
				}
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