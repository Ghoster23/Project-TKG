///@description Deactivates a room
switch sub_state {
	case 0:
		//Walls
		for(var i = 0; i < 4; i++){
			for(var j = 0; j < 2; j++){
				var side = walls[i];
				instance_activate_object(side[j]);
			}
		}

		//Floor
		instance_activate_object(walls[4]);
		
		sub_state = 1;
	break;
	
	case 1:
		//Decor
		for(var i = 0; i < d_cnt; i++){
			instance_activate_object(decor[i]);
		}
			
		//Corridors
		for(var i = 0; i < 4; i++){
			instance_activate_object(corridors[i]);
		}
		
		sub_state = 2;
	break;
	
	case 2:
		//Content
		for(var i = 0; i < ctt_cnt div 2; i++){
			var inst = content[i];
			
			if(inst != noone){
				instance_activate_object(inst);
	
				if(instance_exists(inst)){
					switch inst.object_index {
						case obj_psnt_body:
						case obj_psnt_arch_body:
							instance_activate_object(inst.weapon);
						break;
		
						case obj_torch:
							instance_activate_object(inst.front_light);
						break;
					}
				}else {
					content[i] = noone;
				}
			}
		}
		
		sub_state = 3;
	break;
	
	case 3:
		//Content
		for(var i = ctt_cnt div 2; i < ctt_cnt; i++){
			var inst = content[i];
			
			if(inst != noone){
				instance_activate_object(inst);
	
				if(instance_exists(inst)){
					switch inst.object_index {
						case obj_psnt_body:
						case obj_psnt_arch_body:
							instance_activate_object(inst.weapon);
						break;
		
						case obj_torch:
							instance_activate_object(inst.front_light);
						break;
					}
				}else {
					content[i] = noone;
				}
			}
		}
		
		sub_state = 0;
		state = 2;
	break;
}