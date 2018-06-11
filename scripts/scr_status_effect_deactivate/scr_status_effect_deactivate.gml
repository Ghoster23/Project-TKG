///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
	
switch(status){
	default:
	break;

	case statuses.burning :
		modf[stats.spd] -= 0.5;
	break;

	case statuses.frost :
		modf[stats.spd] += 0.5;
	break;
	
	case statuses.frozen :
		stuck = false;
		modf[stats.def] += 0.5;
		modf[stats.def] += 0.5;
	break;
	
	case statuses.stuck :
		stuck = false;			
	break;

	case statuses.ohko :
		if(ohko){
			if(variable_instance_exists(id,"weapon") && instance_exists(weapon)){
				weapon.draw_script = "NULL";
			}
				
			ohko = false;
		}				
	break;

	case statuses.immune :
		if(immune){
			draw_script = "NULL";
			immune      = false;
		}				
	break;
	
	case statuses.seeall :
		with(obj_see_all_tell){
			instance_destroy();
		}
	break;
}
}