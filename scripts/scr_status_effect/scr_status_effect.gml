///@description Executes effect of status on entity
///@param Status
///@param Count
{
	var status = argument0;
	var count  = argument1;

	if(count > 1){		
		switch(status){
			case statuses.poison :
				hurt = true;
				
				if(stat[stats.hp] >= 0){
					stat[stats.hp] -= 1;
				}
		
			break;
			case statuses.stuck :
				stuck = true;
			
			break;
			case statuses.regen :
				if(stat[stats.hp] < stat[stats.mhp]){
					stat[stats.hp] += 1;
				}
				
			break;
			case statuses.compass :
				
				
			break;
			case statuses.ohko :
				if(variable_instance_exists(self,weapon) && instance_exists(weapon)){
					draw_script = scr_draw_outline;
				}
				
			break;
			case statuses.seeall :
				
				
			break;
			case statuses.midas :
			
			
			break;
			case statuses.immune :
				draw_script      = scr_draw_outline;
				
			break;
		}
		
		count -= 1;
	
	}else if(count == 1){
		count = 0;
		
		switch stat{
			default:
			break;
			case statuses.ohko :
				if(variable_instance_exists(self,weapon) && instance_exists(weapon)){
					weapon.draw_script = null;
				}
				
			break;
			case statuses.immune :
				draw_script      = null;
				
			break;
		}
	}
}