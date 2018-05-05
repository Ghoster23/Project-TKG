 /// @description Insert description here
// You can write your code in this editor
x = global.body.phy_position_x;
y = global.body.phy_position_y;

part_emitter_region(global.ps,global.feet_em,x + global.body.hspd * 2,x + global.body.hspd * 2,y + 10 + global.body.vspd * 2,y + 10 + global.body.vspd * 2,pt_shape_circle,ps_distr_linear);


if(not global.pause){
	//Get poisoned
	if(not global.p_inv && global.status[statuses.immune,0] <= 0 && poison_counter < 20){
		var tile = instance_place( x, y, obj_fluid_tile);
			
		if(tile != noone){
			with(tile){
				if(active){
					var px = abs(other.x - x) div cell_size;
					var py = abs(other.y + 10 - y) div cell_size;
					
					if(px < grid_size && py < grid_size){			
						var type = tiles[px + py * grid_size];
			
						if(0 < type && type < 30){
							other.poison_counter++;
						}
					}
				}
			}
		}
	}
	
	if(poison_counter == prev_poison_counter && poison_counter > 0){
		poison_counter -= 0.25;
		
	}else if(poison_counter >= 15){
		scr_player_status_apply(statuses.poison,6);
		
	}
	
	prev_poison_counter = poison_counter;
	
	/*for(var i = 0; i < 3; i++){
		if(global.equiped[i] == 7){
			var tile = instance_place(x,y,obj_fluid_tile);
			
			if(tile != noone){
				with(tile){
					active = true;
				}
			}	
			break;
		}
	}*/
	
}