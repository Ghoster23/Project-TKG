{
var type = argument0;

switch(type){
	case item_type.unique_consumable:
		return 1;			
	break;
	
	case item_type.food:
		return 4;			
	break;
					
	case item_type.potion:
		return 4;					
	break;
					
	case item_type.chess_piece:
		return 1;		
	break;
					
	case item_type.tl_n_wep:
		return 32;		
	break;
					
	case item_type.equipable:
		return 1;		
	break;
	
	case item_type.drop:
		return 16;
	break;
	case item_type.heart:
		return 4;
	break;
}
}