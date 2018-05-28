{
switch(argument0) {
	case weapons.wood_stick:
		return [obj_melee,0];
	break;
	case weapons.wood_sword_f:
		return [obj_melee,1];
	break;
	case weapons.wood_sword:
		return [obj_melee,2];
	break;
	case weapons.wood_baton:
		return [obj_melee,3];
	break;
	case weapons.wood_mace:
		return [obj_melee,4];
	break;
	case weapons.bow:
		return [obj_bow,0];
	break;
	default:
		return noone;
	break;
}
}