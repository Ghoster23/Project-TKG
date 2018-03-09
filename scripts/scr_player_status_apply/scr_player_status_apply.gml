///@description Updates a player status effect and applies its effect
///@param Status
///@param Counter
{
	var stat = argument[0];
	var count  = argument[1];
	
	if(global.status[stat,0] < count){
		switch stat{
			case statuses.poison :
				global.status[stat,0] = count;
				
			break;
			case statuses.stuck :
			
			break;
			case statuses.regen :
				global.status[stat,0] += count;
				
			break;
			case statuses.compass :
				global.status[stat,0] += count;
				
			break;
			case statuses.ohko :
				global.status[stat,0]  = count;
				
			break;
			case statuses.seeall :
				global.status[stat,0] += count;
				
			break;
			case statuses.midas : 
				global.status[stat,0] += count;
				
			break;
			case statuses.immune :
				global.status[stat,0]  = count;
				
			break;
		}
	}
}