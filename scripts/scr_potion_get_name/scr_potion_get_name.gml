{
switch(argument0) {
	case potions.regeneration:
		return "Elixir of Life";
	break;
	case potions.seeall:
		return "Crystal Clear";
	break;
	case potions.ohko:
		return "Nightshade Juice";
	break;
	case potions.cure:
		return "Immunaization of the Void";
	break;
	case potions.compass:
		return "Compass Concoction";
	break;
	case potions.immunity:
		return "Mango Brew";
	break;
	default:
		return "???";
	break;
}
}