///@description Damage the player 0- custom 1- physically 2- magically
///@param type
///@param dmg
///@param def

var type = argument[0];

var act = false;

if type == 0{
	var dmg = argument[1];
	var def = argument[2];
}

if not global.p_hurt and not global.p_inv and global.p_hp > 0{
	switch type {
		case 0:
			global.p_hp -= dmg div def;
		break;
		case 1:	
			global.p_hp -= e_atk div global.p_def;
		break;
		case 2:
			global.p_hp -= e_satk div global.p_sdef;
		break;
	}
	
    global.p_hurt = true;
	act = true;
	
	if global.char == 0 and global.p_will > 0{
		global.p_will -= 5;
		
		if global.p_will < 0{
			global.p_will = 0;
		}
	}
}

if global.p_hp <= 0 and global.killer == 0{
	global.killer = object_get_name(object_index);
}

if instance_exists(obj_crystal_bubble) and obj_crystal_bubble.state == 0 {
	global.p_inv = false;
	obj_crystal_bubble.state = 1;
}

return act;