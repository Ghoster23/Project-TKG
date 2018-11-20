{
switch argument0 {
	case item_type.active:
		return active.count;
	break;
	
	case item_type.chess_piece:
		return 6;
	break;
	
	case item_type.constellation:
		return constellation.count;
	break;
	
	case item_type.drop:
		return drops.count;
	break;
	
	case item_type.equipable:
		return equips.count;
	break;
	
	case item_type.food:
		return food.count;
	break;
	
	case item_type.heart:
		return heart.count;
	break;
	
	case item_type.potion:
		return potions.count;
	break;
	
	case item_type.tl_n_wep:
		return tl_n_wep.count;
	break;
	
	case item_type.unique_consumable:
		return unique_consume.count;
	break;
}
}