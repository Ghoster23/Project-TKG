///@description Activates the effect of an equipable
///@param equip_id
{
var item = argument0;

switch item {
	case 0: //Crown of Thorns
		global.atk += 5;
		
	break;
	case 1: //Rod of Asclepius
		global.hp = global.maxhp;
		
	break;
	case 2: //Styx's water
		global.def += 5;
	
	break;
	case 3: //Sage's Phylactery
		global.satk += 5;
		
	break;
	case 4: //Ring of Dispel
		global.sdef += 5;
		
	break;
	case 5: //Seven-League Boot prototype
		global.spd += 2;
		
	break;
	case 6: //Unicorn Blood
		global.maxhp += 4;
		
	break;
	case 7: //Staff of Moses
		
		
	break;
	case 8: //Sandals of Hermes
		with global.weapon {
			instance_destroy();
		}
		
		instance_create_layer(global.body.x,global.body.y,"Instances",obj_body_fl);
		
		with global.body {
			instance_destroy(feet);
			instance_destroy(hands);
			instance_destroy(head);
			instance_destroy();
		}
		
		global.body   = obj_body_fl;
		global.flight = true;
		
	break;
	case 9: //Map
		for(var i = 0; i < 64; i++) {
			global.ds_roomgrid[# 2, i] = true;
			
		}
		
	break;
	case 10: //Shield of Zeus
		instance_create_layer(global.body.x, global.body.y + 32, "IF", obj_shield_of_zeus);
		
	break;
	case 11: //Crystal Bubble
		instance_create_layer(global.body.x, global.body.y, "IF", obj_crystal_bubble)
		
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

//Activate once
if(item != 7 && item >= 0 && item < 16 ){
	eq_active[item] = true;
}
}