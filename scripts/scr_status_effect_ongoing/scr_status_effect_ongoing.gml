///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
	
switch(status){
	default:
	break;
	
	case statuses.poison :				
		if(stat[stats.hp] > 0){
			stat[stats.hp] -= 2;
		}
	break;
	
	case statuses.frost :
		if(stat[stats.hp] > 0){
			stat[stats.hp] -= 1;
		}
		
	break;
	
	case statuses.regen :
		if(stat[stats.hp] < stat[stats.mhp]){
			stat[stats.hp] += 1;
		}	
	break;
	
}
}