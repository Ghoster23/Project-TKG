{
var type = argument0;

switch(type){
	case potions.regeneration:
		return c_red;
	break;
	
	case potions.compass:
		return c_navy;		
	break;
	
	case potions.seeall:
		return c_teal;
	break;
	
	case potions.cure:
		return c_fuchsia;
	break;
	
	case potions.ohko:
		return c_purple;
	break;
	
	case potions.immunity:
		return c_orange;
	break;
}
}