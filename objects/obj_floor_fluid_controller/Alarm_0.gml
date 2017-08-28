/// @description Insert description here
switch type {
	case 0:
		return;
	break;
	//Slime creep
	case 1:
		if global.st_poison_d == 0 and not global.p_inv and not global.flight{
			global.st_poison = true;
			global.st_poison_d = 15;
		}
				
	break;
	//Water
	case 2:
		
		
	break;
	//Blood
	case 3:
		
		
	break;
}