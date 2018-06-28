{
var type   = argument0;
var item   = argument1;
var amount = argument2;

switch(type){
	case item_type.food:
		return scr_food_get_name(item);
	break;
	case item_type.potion:
		return scr_potion_get_name(item);
	break;
	case item_type.chess_piece:
		return scr_chessP_get_name(item, amount);
	break;
	case item_type.constellation:
		return scr_constellation_get_name(item);
	break;
	case item_type.unique_consumable:
		return scr_unique_consume_get_name(item);
	break;
	case item_type.drop:
		return scr_drop_get_name(item);
	break;
	case item_type.equipable:
		return scr_equip_get_name(item);
	break;
	case item_type.weapons:
		return scr_weapon_get_name(item);
	break;
	case item_type.active:
		return scr_active_get_name(item);
	break;
	case item_type.tool:
		return scr_tool_get_name(item);
	break;
	default:
		return "???";
	break;
}
}