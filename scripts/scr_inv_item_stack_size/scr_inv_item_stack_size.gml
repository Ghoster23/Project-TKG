{
switch(argument){
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
					
	case item_type.constellation:
		return 1;
	break;
					
	case item_type.tool:
		return 8;		
	break;
					
	case item_type.weapon:
		return 8;
	break;
					
	case item_type.equipable:
		return 1;		
	break;
	
	case item_type.drop:
		return 16;
	break;
}
}