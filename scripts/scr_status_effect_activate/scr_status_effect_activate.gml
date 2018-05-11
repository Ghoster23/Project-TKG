///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
	
switch(status){
	case statuses.poison :				
		if(stat[stats.hp] > 0){
			stat[stats.hp] -= 1;
		}
		
	break;
	case statuses.stuck :
		if(not stuck){
			stuck = true;
		}			
	break;
	case statuses.regen :
		if(stat[stats.hp] < stat[stats.mhp]){
			stat[stats.hp] += 1;
		}
				
	break;
	case statuses.compass :
				
				
	break;
	case statuses.ohko :
		if(not ohko){
			if(variable_instance_exists(id,"weapon") && instance_exists(weapon)){
				weapon.draw_script = scr_draw_outline;
			}
				
			ohko = true;
		}				
	break;
	case statuses.seeall :
				
				
	break;
	case statuses.midas :
			
			
	break;
	case statuses.immune :
		if(not immune){
			draw_script = scr_draw_outline;
			immune      = true;
		}				
	break;
}
}