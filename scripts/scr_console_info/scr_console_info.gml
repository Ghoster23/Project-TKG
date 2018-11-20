switch(argument0){
	default:
		console_text += "Keyword unknown.";
	break;
			
	case "?":
		console_text += " - stats\n - item types\n";
	break;
			
	case "stats":
		console_text += " 0 - Max HP\n 1 - HP\n 2 - Atk\n 3 - Def\n 4 - Sp Atk\n 5 - Sp Def\n 6 - Spd\n 7 - Armor\n 8 - Luck\n";
	break;
	
	case "item types":
		console_text += " 0 - unique_consumable\n 1 - food\n 2 - potion\n 3 - chess_piece\n 4 - constellation\n" +
						" 5 - tl_n_wep\n 6 - active\n 7 - equipable\n 8 - drop\n 9 - heart\n 10 - currency\n"    +
						"\n Use list_items(type) for a list of the items of a given type.\n";
	break;
}