///@description Updates a player status effect and applies its effect
///@param Status
{
	var status = argument[0];

	if(global.status[status,0] > 0){
		if(global.status[status,1] < global.status[status,0]){
			global.status[status,1] = global.status[status,0];
		}
		
		switch status{
			case 0: //Poisoned
				global.p_hp -= 1;
				global.p_hurt = true;
		
			break;
			case 1: //Stuck
			break;
			case 2: //Regeneration
				if(global.p_hp < global.p_maxhp){
					global.p_hp += 1;
					
				}
			break;
			case 3: //Compass
				
			break;
			case 4: //OHKO
				
			break;
			case 5: //See all
				
			break;
			case 6: //Gold
			
			break;
			case 7: //Immunity
			
			break;
		}
		
		global.status[status,0] -= 1;
		
	} else {
		global.status[status,0] = 0;
		global.status[status,1] = 0;
		
	}
}