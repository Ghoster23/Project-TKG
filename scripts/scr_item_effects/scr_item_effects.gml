item = argument0;

switch item {
	case 0: //Crown of Thorns
		global.p_atk += 5;
		eq_active[item] = true;
		
	break;
	case 1: //Rod of Asclepius
		global.p_hp = global.p_maxhp;
		eq_active[item] = true;
		
	break;
	case 2: //Styx's water
		global.p_def += 5;
		eq_active[item] = true;
	
	break;
	case 3: //Sage's Phylactery
		global.p_satk += 5;
		eq_active[item] = true;
		
	break;
	case 4: //Ring of Dispel
		global.p_sdef += 5;
		eq_active[item] = true;
		
	break;
	case 5: //Seven-League Boot prototype
		global.p_spd += 2;
		eq_active[item] = true;
		
	break;
	case 6: //Unicorn Blood
		global.p_maxhp += 4;
		eq_active[item] = true;
		
	break;
	case 7:
		
		
	break;
	case 8:
		
		
	break;
	case 9:
		
		
	break;
	case 10:
		
		
	break;
	case 11:
		
		
	break;
	case 12:
		
		
	break;
	case 13:
		
		
	break;
	case 14:
		
		
	break;
	case 15:
		
		
	break;
}
	