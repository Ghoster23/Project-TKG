/// @description Insert description here
switch type {
	case 0:
		return;
	break;
	//Slime creep
	case 1:
		if global.status[0,0] <= 6 and not global.p_inv and not global.flight{
			scr_player_status_apply(0,6);
			
		}
				
	break;
	//Water
	case 2:
		
		
	break;
	//Blood
	case 3:
		
		
	break;
}