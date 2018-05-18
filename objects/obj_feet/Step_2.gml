x = global.body.phy_position_x;
y = global.body.phy_position_y;

part_emitter_region(global.ps,global.feet_em,x + global.body.hspd * 2,x + global.body.hspd * 2,y + 10 + global.body.vspd * 2,y + 10 + global.body.vspd * 2,pt_shape_circle,ps_distr_linear);


if(not global.pause){
	//Get poisoned
	if(!global.body.inv && !global.body.innoc){
		var tile = instance_place( x, y, obj_fluid_tile);
			
		if(tile != noone){
			with(tile){
				if(active){
					var px = (other.x - x)     div cell_size;
					var py = (other.y + 9 - y) div cell_size;
					
					if(0 <= px && px < grid_size && 0 <= py && py < grid_size){
						var type = tiles[px + py * grid_size];
			
						if(0 < type && type < 30){
							other.poison_counter++;
						}else if(30 < type && type < 60){
							scr_status_apply(statuses.wet,5,global.body);
						}
					}
				}
			}
		}
	}
	
	if(poison_counter == prev_poison_counter && poison_counter > 0){
		poison_counter -= 0.25;
		
	}else if(poison_counter >= 30){
		scr_status_apply(statuses.poison,4,global.body);
		poison_counter = 0;
		
	}
	
	prev_poison_counter = poison_counter;	
}