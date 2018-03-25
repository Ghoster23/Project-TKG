///@description Applies statuses based on potions
{
var pot_id  = argument0;
var pot_lvl = argument1;

show_debug_message("Potion");

switch(pot_id){
	case potions.regeneration: //Health Potion
		scr_player_status_apply( statuses.regen,  4 * pot_lvl + 1);
		
	break;
	case potions.midas: //Midas Potion
		scr_player_status_apply( statuses.midas, 15 * (pot_lvl + 1));
		
	break;
	case potions.seeall: //See All Potion
		scr_player_status_apply( statuses.seeall, 60 * (pot_lvl + 1));
		
	break;
	case potions.ohko: //OHKO Potion
		scr_player_status_apply( statuses.ohko, 10 * (pot_lvl + 1));
		
	break;
	case potions.cure: //Cure Potion
		global.status[0,0] = 0;
		
	break;
	case potions.compass: //Compass Potion
		scr_player_status_apply( statuses.compass, 60 * (pot_lvl + 1));
		
	break;
	case potions.immunity: //Immunity Potion
		scr_player_status_apply( statuses.immune, 10 * (pot_lvl + 1));
		
	break;
}
}