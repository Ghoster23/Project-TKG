///@description Updates a player status effect and applies its effect
///@param Status
{
var status = argument[0];

switch status{
	case "st_poison":
		if global.st_poison {
			global.p_hp -= 1;
			global.st_poison -= 3;
		}
		
		if global.st_poison < 0 {
			global.st_poison = 0;
		}
		
	break;
	case "st_stuck":
	break;
	case "st_regen":
		if global.st_regen {
			if global.p_hp <= global.p_maxhp {
				global.p_hp += 1;
			}
			
			global.st_regen -= 1;
			
		}
		
		if global.st_regen < 0 {
			global.st_regen = 0;
		}
	break;
}
}