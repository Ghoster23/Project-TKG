switch(argument0){
	default:
		console_text += "Keyword unknown.\n";
	break;
			
	case "?":
		console_text += " - stats\n - item types\n - status effects\n";
	break;
			
	case "stats":
		console_text += " 0 - Max HP\n 1 - HP\n 2 - Atk\n 3 - Def\n 4 - Sp Atk\n 5 - Sp Def\n 6 - Spd\n 7 - Armor\n 8 - Luck\n";
	break;
	
	case "item types":
		console_text += " 0 - unique_consumable\n 1 - food\n 2 - potion\n 3 - chess_piece\n" +
						" 4 - tl_n_wep\n 5 - equipable\n 6 - drop\n 7 - heart\n"    +
						"\n Use list_items(type) for a list of the items of a given type.\n";
	break;
	
	case "status effects":
		console_text += "0 - poison\n1 - frost\n2 - stun\n3 - frozen\n4 - stuck\n5 - burning\n" + 
						"6 - regen\n7 - compass\n8 - ohko\n9 - seeall\n10 - immune\n11 - wet\n";
	break;
}