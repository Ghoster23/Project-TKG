///@description Updates a player status effect and applies its effect
///@param Status
{
	var stat = argument[0];

	if(global.status[stat,0] > 0){
		if(global.status[stat,1] < global.status[stat,0]){
			global.status[stat,1] = global.status[stat,0];
		}
		
		switch stat{
			case statuses.poison :
				global.p_hurt = true;
				
				if(global.p_stats[stats.hp] >= 0){
					global.p_stats[stats.hp] -= 1;
				}
		
			break;
			case statuses.stuck :
			
			
			break;
			case statuses.regen :
				if(global.p_stats[stats.hp] < global.p_stats[stats.mhp]){
					global.p_stats[stats.hp] += 1;
				}
				
			break;
			case statuses.compass :
				
				
			break;
			case statuses.ohko :
				if(instance_exists(global.weapon)){
					global.weapon.draw_script    = scr_draw_outline;
				}
				
			break;
			case statuses.seeall :
				
				
			break;
			case statuses.midas :
			
			
			break;
			case statuses.immune :
				global.body.draw_script      = scr_draw_outline;
				global.body.head.draw_script = scr_draw_outline;
				
			break;
		}
		
		global.status[stat,0] -= 1;
		
	} else {
		global.status[stat,0]  = 0;
		global.status[stat,1]  = 0;
		
		switch stat{
			default:
			break;
			case statuses.ohko :
				if(instance_exists(global.weapon)){
					global.weapon.draw_script = null;
				}
			break;
			case statuses.immune :
				global.body.draw_script      = null;
				global.body.head.draw_script = null;
			break;
		}
	}
}