///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
var pos    = argument1;
var vfx    = argument2;
var vs     = false;
	
switch(status){
	default:
	break;
	
	case statuses.burning :
		modf[stats.spd] += 0.5;
		vs = true;
	break;
	
	case statuses.poison :				
		if(stat[stats.hp] > 0){
			stat[stats.hp] -= 2;
		}
		
		vs = true;
	break;
	
	case statuses.wet :				
		vs = true;
	break;
	
	case statuses.frost :
		modf[stats.spd] -= 0.5;
		
		vs = true;
	break;
	
	case statuses.frozen :
		stuck = true;
		modf[stats.def] -= 0.5;
		modf[stats.def] -= 0.5;
		
		vs = true;
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
		
		vs = true;
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

if(vs){
	if(vfx == noone){
		var vfx = instance_create_layer(x,y,layer,obj_status_vfx);
	}
	
	vfx.owner  = id;
	vfx.status = status;
	
	return vfx;
}

return noone;
}