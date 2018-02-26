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

if(not global.p_hurt      and  //Player not recently hurt
   not global.p_inv       and  //Player not invulnerable
   not global.status[7,0] and  //Player not immune to damage
   global.hp > 0){           //Player alive
	   
	switch type {
		case 0:  //Custom Damage
			global.hp -= dmg div def;
		break;
		case 1:	 //Physical Damage
			global.hp -= e_atk div global.def;
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

if(instance_exists(obj_crystal_bubble) and  //Has Crystal Bubble
   obj_crystal_bubble.state == 0){          //Crystal Bubble active
	global.p_inv             = false;  //Remove invulnerabillity
	obj_crystal_bubble.state = 1;      //Pop Crystal Bubble
}

return act;
}