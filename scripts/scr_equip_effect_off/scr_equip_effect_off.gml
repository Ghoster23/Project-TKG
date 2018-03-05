///@description Activates the effect of an equipable
///@param equip_id
{
var item = argument0;

switch item {
	case equips.crown_of_thorns:
		global.atk -= 5;
		
	break;
	case equips.rod_of_asclepius:
		global.hp = global.maxhp;
		
	break;
	case equips.styxs_water:
		global.def -= 5;
	
	break;
	case equips.sages_phylactery:
		global.satk -= 5;
		
	break;
	case equips.ring_of_dispel:
		global.sdef -= 5;
		
	break;
	case equips.league_boots:
		global.spd -= 2;
		
	break;
	case equips.unicorn_blood:
		global.maxhp -= 4;
		
	break;
	case equips.staff_of_moses:
		
		
	break;
	case equips.sandals_of_hermes:
		with global.weapon {
			instance_destroy();
		}
		
		instance_create_layer(global.body.x,global.body.y,"Instances",obj_body);
		
		with global.body {
			instance_destroy(feet);
			instance_destroy(hands);
			instance_destroy(head);
			instance_destroy();
		}
		
		global.body   = obj_body;
		global.flight = false;
		
	break;
	case equips.shield_of_zeus:
		instance_destroy(obj_shield_of_zeus);
		
	break;
	case equips.crystal_bubble:
		instance_destroy(obj_crystal_bubble);
		
	break;
}
}