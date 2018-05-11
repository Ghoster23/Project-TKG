///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
	
switch(status){
	default:		
	break;
	
	case statuses.stuck :
		stuck = false;			
	break;

	case statuses.ohko :
		if(ohko){
			if(variable_instance_exists(id,"weapon") && instance_exists(weapon)){
				weapon.draw_script = null;
			}
				
			ohko = false;
		}				
	break;

	case statuses.immune :
		if(immune){
			draw_script = null;
			immune      = false;
		}				
	break;
}
}