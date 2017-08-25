///@description Damage the enemy
type =  404;

///Player on Enemy attacks
//Physical attacks
atk_wep[0] = obj_swing;

//Physical cooldowns
atk_cooldown[0] = 0.2;

//Magical attacks
satk_wep[0] = obj_sword_projectile_impact;

//Magical cooldowns
satk_cooldown[0] = 0.4;

///Enemy/Object on Enemy attacks
//Physical attacks
e_wep[0] = obj_explosion;

//Other attacks cooldown - Physical
e_wep_cd[0] = 1;

//Physical attacks
e_swep[0] = "None";

//Other attacks cooldown - Physical
e_swep_cd[0] = 0;

//Check for physical attack from player
for(i = 0; i < 1; i++){
	obj = atk_wep[i];

	if place_meeting(x,y,obj){
		type = 0;
		break;
	}
	
}

//Check for magical attack from player
if type == 404{
	for(j = 0; j < 1; j++){
		obj = satk_wep[j];

		if place_meeting(x,y,obj){
			type = 1;
			break;
		}
	}
}

//Check for physical attacks from enemies/objects
if type == 404{
	for(k = 0; k < 1; k++){
		obj = e_wep[k];

		if place_meeting(x,y,obj){
			type = 2;
			break;
		}
	}
}

//Check for physical attacks from enemies/objects
if type == 404{
	for(l = 0; l < 1; l++){
		obj = e_swep[l];

		if place_meeting(x,y,obj){
			type = 3;
			break;
		}
	}
}

//Apply damage
switch type {
	case 0: //Physical attacks
		e_hp -= global.p_atk div e_def;
		damaged = true;
		
		var d = point_direction(obj.x,obj.y,x,y);
		
		physics_apply_impulse(x,y,lengthdir_x(10,d),lengthdir_y(10,d));
		
		alarm[0] = atk_cooldown[i] * room_speed;
		
	break;
	case 1: //Speacil attacks
		e_hp -= global.p_satk div e_sdef;
		damaged = true;
		
		alarm[0] = satk_cooldown[j] * room_speed;
		
	break;
	case 2:
		e_hp -= e_wep[k].e_atk div e_def;
		damaged = true;
		
		alarm[0] = e_wep_cd[k] * room_speed;
		
	break;
	case 3:
		e_hp -= e_wep[l].e_satk div e_sdef;
		damaged = true;
		
		alarm[0] = e_swep_cd[l] * room_speed;
		
	break;
	case 404:
	break;
}
	
if type != 404{
	//Activate flash
	flash = true;
	
	
	global.shake = 2;
	
	alarm[4] = 0.03 * room_speed;
}