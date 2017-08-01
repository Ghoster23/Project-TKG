///@description Damage the enemy
type =  404;

//Physical attacks
atk_wep[0] = obj_swing;
atk_wep[1] = obj_explosion;

//Magical attacks
satk_wep[0] = obj_sword_t;

//Check for physical attack contact
for(i = 0; i < 2; i++){
	obj = atk_wep[i];

	if place_meeting(x,y,obj){
		type = 0;
	}
}

//Check for magical attack contact
for(i = 0; i < 1; i++){
	obj = satk_wep[i];

	if place_meeting(x,y,obj){
		type = 1;
	}
}

//Apply damage
switch type {
	case 0: //Physical attacks
		e_hp -= global.p_atk div e_def;
		
	break;
	case 1: //Speacil attacks
		e_hp -= global.p_satk div e_sdef;
		
	break;
	case 404:
	break;
}
	
if type != 404{
	//Activate immunity
	damaged = true;
	flash = true;
	show_debug_message(e_hp);
	
	alarm[0] = 0.2 * room_speed;
	alarm[4] = 0.03 * room_speed;
}