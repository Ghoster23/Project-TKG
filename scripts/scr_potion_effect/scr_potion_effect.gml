///@description Applies statuses based on potions
{
var pot_id  = argument0;
var pot_lvl = argument1;

switch(pot_id){
	case potions.regeneration: //Health Potion
		scr_player_status_apply( 2,  4 * pot_lvl + 1);
		
	break;
	case potions.midas: //Midas Potion
		scr_player_status_apply( 6, 15 * (pot_lvl + 1));
		
	break;
	case potions.seeall: //See All Potion
		scr_player_status_apply( 5, 60 * (pot_lvl + 1));
		
	break;
	case potions.ohko: //OHKO Potion
		scr_player_status_apply( 4, 10 * (pot_lvl + 1));
		
	break;
	case potions.cure: //Cure Potion
		global.status[0,0] = 0;
		
	break;
	case potions.compass: //Compass Potion
		scr_player_status_apply( 3, 60 * (pot_lvl + 1));
		global.room_change = true;
		
	break;
	case potions.immunity: //Immunity Potion
		scr_player_status_apply( 7, 10 * (pot_lvl + 1));
		
	break;
}
}