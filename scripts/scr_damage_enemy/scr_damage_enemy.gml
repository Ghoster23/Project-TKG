///@description Damage the enemy

{
var boss = false;

if argument_count == 1 {
	boss = argument[0];
}

var type =  404;

if(place_meeting(x,y,obj_damage_dealer)){ //Check for attack from player
	if place_meeting(x,y,obj_damage_melee){ //Check for physical attack
		dealer_id = instance_place(x, y, obj_damage_melee);
		type = 0;
		
	}else if place_meeting(x,y,obj_damage_special){ //Check for magical attack from player
		dealer_id = instance_place(x, y, obj_damage_special);
		type = 1;
		
	}
}else if(place_meeting(x,y,obj_e_damage_dealer)){ //Check for attack from enemy or trap
	if place_meeting(x,y,obj_e_damage_melee){ //Check for physical attack
		dealer_id = instance_place(x, y, obj_e_damage_melee);
		type = 2;
		
	}else if place_meeting(x,y,obj_damage_special){ //Check for magical attack from player
		dealer_id = instance_place(x, y, obj_e_damage_special);
		type = 3;

	}
}

//Check for physical attacks from enemies/objects
/*if type == 404{
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
}*/

if(global.status[4,0] and type != 404){
	type = 4;
	
}

if(type != 404){
	var xx = dealer_id.x;
	var yy = dealer_id.y;
	var kb = dealer_id.kb_amount;
	
	if(kb != 0){
		var d = point_direction(xx,yy,x,y);
		
		physics_apply_impulse(x,y,lengthdir_x(kb,d),lengthdir_y(kb,d));
	}
}

//Apply damage
if not boss {
	switch type {
		case 0: //Physical attacks
			e_hp -= global.atk div e_def;
		
		break;
		case 1: //Speacil attacks
			e_hp -= global.satk div e_sdef;
		
		break;
		case 2:
			e_hp -= dealer_id.e_atk div dealer_id.e_def;
		
		break;
		case 3:
			e_hp -= dealer_id.e_satk div dealer_id.e_sdef;
		
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
		
		//Activate hurt immunity
		alarm[0] = 0.5 * room_speed;
		
		scr_blood(dealer_id);
	
		if(object_index == obj_psnt_body or object_index == obj_psnt_arch_body){
			state = "stun";
			alarm[6] = 0.8 * room_speed;
			scr_alarms_pause(6);
		
		} 
	
		global.shake = 5;
	
		alarm[4] = 0.03 * room_speed;
	}
	
}else {
	switch type {
		case 0: //Physical attacks
			global.b_hp -= global.atk div global.b_def;
		
			global.shake = 3;
		
		break;
		case 1: //Special attacks
			global.b_hp -= global.satk div global.b_sdef;
			
			global.shake = 3;
		
		break;
		case 2:
			global.b_hp -= dealer_id.e_atk div global.b_def;
			
			global.shake = 3;
		break;
		case 3:
			global.b_hp -= dealer_id.e_satk div global.b_sdef;
			
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