{
var item = argument0;
var pos  = argument1;

switch(item){
	case item_type.unique_consumable:
		scr_unique_consume_effect(item);
	break;
	case item_type.food:
		scr_food_effect(item);
	break;
	case item_type.potion:
		scr_chessP_effect(item);
	break;
	case item_type.chess_piece:
		scr_constellation_effect(item);
	break;
	case item_type.constellation:
	break;
	default:
	break;
}

if(item <= item_type.constellation){
	scr_inv_set_pos(-1,-1,-1,pos);
	capacity++;
}
}