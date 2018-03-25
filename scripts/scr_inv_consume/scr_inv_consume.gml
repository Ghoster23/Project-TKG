{
var pos    = argument0;

var type   = inventory[# 0, pos];
var item   = inventory[# 1, pos];
var amount = inventory[# 2, pos];

switch(type){
	case item_type.unique_consumable:
		scr_unique_consume_effect(item);
		scr_inv_set_pos(-1,-1,-1,pos);
	break;
	case item_type.food:
		scr_food_effect(item);
		scr_inv_set_pos(-1,-1,-1,pos);
	break;
	case item_type.potion:
		scr_potion_effect(item,amount);
		scr_inv_set_pos(-1,-1,-1,pos);
	break;
	case item_type.chess_piece:
		scr_chessP_effect(item,amount);
		scr_inv_set_pos(-1,-1,-1,pos);
	break;
	case item_type.constellation:
		scr_constellation_effect(item);
		scr_inv_set_pos(-1,-1,-1,pos);
	break;
	default:
	break;
}
}