///@description Damage the enemy

{
var boss = false;

if argument_count == 1 {
	boss = argument[0];
}

var type =  404;

///Player on Enemy attacks
//Physical attacks
atk_wep[0] = obj_swing;

//Physical cooldowns
atk_cooldown[0] = 0.2;

//Magical attacks
satk_wep[0] = obj_sword_projectile;

//Magical cooldowns
satk_cooldown[0] = 0.4;

///Enemy/Object on Enemy attacks
//Physical attacks
e_wep[0] = obj_explosion;
e_wep[1] = obj_e_arrow_t;
e_wep[2] = obj_fl_spikes;
e_wep[3] = obj_fl_spikes_alt;
e_wep[4] = obj_spike_trap;

//Other attacks cooldown - Physical
e_wep_cd[0] = 1;
e_wep_cd[1] = 0.2;
e_wep_cd[2] = 0.2;
e_wep_cd[3] = 0.2;
e_wep_cd[4] = 0.2;

//Magical attacks
e_swep[0] = "None";

//Other attacks cooldown - Magical
e_swep_cd[0] = 0;

//Check for physical attack from player
for(i = 0; i < 1; i++){
	obj = atk_wep[i];

	if place_meeting(x,y,obj){
		dealer_id = instance_place(x, y, obj);
		type = 0;
		break;
		
	}
	
}

//Check for magical attack from player
if type == 404{
	
	for(j = 0; j < 1; j++){
		obj = satk_wep[j];

		if place_meeting(x,y,obj){
			dealer_id = instance_place(x, y, obj);
			type = 1;
			break;
		}
	}
}

//Check for physical attacks from enemies/objects
if type == 404{
	for(k = 0; k < 5; k++){
		obj = e_wep[k];

		if place_meeting(x,y,obj){
			dealer_id = instance_place(x, y, obj);
			switch obj {
				default:
					type = 2;
				break;
				case obj_fl_spikes:
				case obj_fl_spikes_alt:
					if obj.state == 1 and not object_is_ancestor(self.object_index,obj_flying_enemy_parent){ 
						type = 2;
					}
				break;
				case obj_explosion:
					if obj.image_index < 3 {
						type = 2;
					}
				break;
			}
			break;
		}
	}
}

//Check for Magical attacks from enemies/objects
if type == 404{
	for(l = 0; l < 1; l++){
		obj = e_swep[l];

		if place_meeting(x,y,obj){
			dealer_id = instance_place(x, y, obj);
			type = 3;
			break;
		}
	}
}

if(global.status[4,0] and type != 404){
	type = 4;
	
}


//Apply damage
if not boss {
	switch type {
		case 0: //Physical attacks
			e_hp -= global.p_atk div e_def;
		
			var d = point_direction(obj.x,obj.y,x,y);
		
			physics_apply_impulse(x,y,lengthdir_x(10,d),lengthdir_y(10,d));
		
			if obj == obj_swing and global.p_will <= global.p_maxwill{
				global.p_will += 5;
			}
		
			alarm[0] = atk_cooldown[i] * room_speed;
		
		break;
		case 1: //Speacil attacks
			e_hp -= global.p_satk div e_sdef;
		
			alarm[0] = satk_cooldown[j] * room_speed;
		
		break;
		case 2:
			e_hp -= e_wep[k].e_atk div e_def;
		
			alarm[0] = e_wep_cd[k] * room_speed;
		
		break;
		case 3:
			e_hp -= e_wep[l].e_satk div e_sdef;
		
			alarm[0] = e_swep_cd[l] * room_speed;
		
		break;
		case 4:
			e_hp = 0;
		break;
		case 404:
		break;
	}
	
	if type != 404 {
		//Activate flash
		flash = true;
		damaged = true;
		
		scr_blood(dealer_id);
	
		if self.object_index == obj_psnt_body or self.object_index == obj_psnt_arch_body {
			state = "stun";
			alarm[6] = 0.8 * room_speed;
			scr_alarms_pause(6);
		
		} 
	
		global.shake = 3;
	
		alarm[4] = 0.03 * room_speed;
	}
	
}else {
	switch type {
		case 0: //Physical attacks
			global.b_hp -= global.p_atk div global.b_def;
		
			var d = point_direction(obj.x,obj.y,x,y);
		
			physics_apply_impulse(x,y,lengthdir_x(10,d),lengthdir_y(10,d));
		
			if obj == obj_swing and global.p_will <= 97.5{
				global.p_will += 2.5;
			}
			
			global.shake = 3;
		
		break;
		case 1: //Speacil attacks
			if obj != obj_sword_projectile {
				global.b_hp -= global.p_satk div global.b_sdef;
			}else {
				global.b_hp -= global.p_satk * global.p_will div global.b_sdef;
			}
			
			global.shake = 3;
		
		break;
		case 2:
			global.b_hp -= e_wep[k].e_atk div global.b_def;
			
			global.shake = 3;
		break;
		case 3:
			global.b_hp -= e_wep[l].e_satk div global.b_sdef;
			
			global.shake = 3;
		break;
		case 4:
			global.b_hp -= 20;
			
			global.shake = 3;
		break;
		case 404:
		break;
	}
	
}
	
}