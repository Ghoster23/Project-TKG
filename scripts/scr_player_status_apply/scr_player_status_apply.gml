///@description Updates a player status effect and applies its effect
///@param Status
///@param Counter
{
	var status = argument[0];
	var count  = argument[1];
	
	if(global.status[status,0] < count){
		switch status{
			case 0: //Immunity
				if(not global.p_inv and not global.p_hurt and not global.status[7,0]){
					global.status[0,0] = count;
					
				}
			break;
			case 1:
			break;
			case 2: //Regen
				global.status[2,0] += count;
				
			break;
			case 3: //Compass
				global.status[3,0] += count;
				
			break;
			case 4: //OHKO
				global.status[4,0] = count;
				
			break;
			case 5: //See all
				global.status[5,0] += count;
				
			break;
			case 6: //Midas
				global.status[6,0] += count;
				
			break;
			case 7: //Immunity
				global.status[7,0] = count;
				
			break;
		}
	}
}