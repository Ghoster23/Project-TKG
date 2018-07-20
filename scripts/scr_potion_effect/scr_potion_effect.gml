///@description Applies statuses based on potions
{
var pot_id  = argument0;
var pot_lvl = argument1;

switch(pot_id){
	case potions.regeneration: //Health Potion
		scr_status_apply( statuses.regen,  4 * pot_lvl, global.body);
		
	break;
	case potions.seeall: //See All Potion
		scr_status_apply( statuses.seeall, 60 * (pot_lvl), global.body);
		
	break;
	case potions.ohko: //OHKO Potion
		scr_status_apply( statuses.ohko, 10 * (pot_lvl), global.body);
		
	break;
	case potions.cure: //Cure Potion
		with(global.body){
			for(var i = 0; i < status_count; i++){
				var status = status_list[| i];
				var type   = status[0];
			
				if(type < statuses.neg_count){
					status_list[| i] = [status[0],status[1],0];
				}		
			}
		}
		
	break;
	case potions.compass: //Compass Potion
		scr_status_apply( statuses.compass, 60 * (pot_lvl), global.body);
		
	break;
	case potions.immunity: //Immunity Potion
		scr_status_apply( statuses.immune, 10 * (pot_lvl), global.body);
		
	break;
}
}