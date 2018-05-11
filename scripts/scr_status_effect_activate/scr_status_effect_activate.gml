///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
	
switch(status){
	default:
	break;
	
	case statuses.frost :
		modf[stats.spd] -= 0.5;
	break;
	
	case statuses.stuck :
		if(not stuck){
			stuck = true;
		}			
	break;
	
	case statuses.ohko :
		if(not ohko){
			if(variable_instance_exists(id,"weapon") && instance_exists(weapon)){
				weapon.draw_script = scr_draw_outline;
			}
				
			ohko = true;
		}				
	break;
	
	case statuses.immune :
		if(not immune){
			draw_script = scr_draw_outline;
			immune      = true;
		}				
	break;
	
}
}