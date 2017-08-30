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
	case 7: //Staff of Moses
		rmx = global.body.x mod global.roomwd;
		rmy = global.body.y mod global.roomhg;
		
		ds_grid_set_region(global.fluid_grid,(rmx - 16) div 4,(rmy + 3) div 4,(rmx + 15) div 4,(rmy + 14) div 4,0);
		ds_grid_set_region(global.fluid_grid,((rmx - 16) + 4) div 4,((rmy + 3) - 4) div 4,(rmx + 15 - 4) div 4,(rmy + 14 + 4) div 4,0);
		
	break;
	case 8: //Sandals of Hermes
		with global.weapon {
			instance_destroy();
		}
		
		instance_create_layer(global.body.x,global.body.y,"Instances",obj_body_fl);
		
		with global.body {
			instance_destroy(hands);
			instance_destroy(head);
			instance_destroy();
		}
		
		global.body = obj_body_fl;
		global.flight = true;
		eq_active[item] = true;
		
	break;
	case 9: //Map
		for(var i = 0; i < 64; i++) {
			global.ds_roomgrid[# 2, i] = true;
			
		}
		
		eq_active[item] = true;
		
	break;
	case 10: //Shield of Zeus
		instance_create_layer(global.body.x, global.body.y + 32, "IF", obj_shield_of_zeus);
		
		eq_active[item] = true;
		
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
	