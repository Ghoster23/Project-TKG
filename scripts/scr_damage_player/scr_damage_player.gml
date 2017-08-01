///@description Damage the player 0- custom 1- physically 2- magically
///@param type
///@param dmg
///@param def

var type = argument[0];

if type == 0{
	var dmg = argument[1];
	var def = argument[2];
}

if not global.p_hurt and not global.p_inv{
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
	
	if global.char == 0 and global.p_will > 0{
		global.p_will -= 5;
		
		if global.p_will < 0{
			global.p_will = 0;
		}
	}
}