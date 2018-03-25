///@description Damage the player 0- custom 1- physically 2- magically
///@param type
///@param dmg
///@param def
{
var type = argument[0];

var act = false;

if type == 0{
	var dmg = argument[1];
	var def = argument[2];
}

var bubble = false;

if(instance_exists(obj_crystal_bubble) &&
	obj_crystal_bubble.state == 0){
		
	with(obj_crystal_bubble){
		state++;
		state = state mod 2;
	}
	
	bubble = true;
}

if(not global.p_hurt      and  //Player not recently hurt
   not global.p_inv       and  //Player not invulnerable
   not bubble             and  //Player not immune to damage
   global.hp > 0){             //Player alive
	   
	switch type {
		case 0:  //Custom Damage
			global.hp -= dmg    div def;
		break;
		case 1:	 //Physical Damage
			global.hp -= e_atk  div global.def;
		break;
		case 2:  //Speacial Damage
			global.hp -= e_satk div global.sdef;
		break;
	}
	
    global.p_hurt = true; //Player has been recently hurt
	act           = true; //Player got hurt by this check
	
}

if(global.hp <= 0 and  //Player Dead
   global.killer == 0){  //Killer not determined
	global.killer = object_get_name(object_index);
}

return act;
}