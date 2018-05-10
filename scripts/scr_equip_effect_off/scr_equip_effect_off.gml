///@description Activates the effect of an equipable
///@param equip_id
{
var item = argument0;

switch item {
	case equips.crown_of_thorns:
		global.body.stat[stats.atk] -= 5;
		
	break;
	case equips.rod_of_asclepius:
		
	break;
	case equips.styxs_water:
		global.body.stat[stats.def] -= 5;
	
	break;
	case equips.sages_phylactery:
		global.body.stat[stats.satk] -= 5;
		
	break;
	case equips.ring_of_dispel:
		global.body.stat[stats.sdef] -= 5;
		
	break;
	case equips.league_boots:
		global.body.stat[stats.spd] -= 2;
		
	break;
	case equips.unicorn_blood:
		global.body.stat[stats.mhp] -= 4;
		
	break;
	case equips.staff_of_moses:
		global.erase = false; //FIX ME
		
	break;
	case equips.sandals_of_hermes:
		global.body.flight--;
		
		if(!global.body.flight){
			with global.weapon {
				instance_destroy();
			}
		
			var bd = scr_spawn_player(global.body.x,global.body.y,"Instances");
		
			with global.body {
				instance_destroy(feet);
				instance_destroy(hands);
				instance_destroy();
			}
		
			global.body = bd.object_index;	
		}
	break;
	case equips.shield_of_zeus:
		instance_destroy(obj_shield_of_zeus);
		
	break;
	case equips.crystal_bubble:
		instance_destroy(obj_crystal_bubble);
		
	break;
}
}