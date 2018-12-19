///parameters - [ link count, damage dealer]
///chain_th_vars - [ state, inst id, charge]
{
var num = argument0;

var parameters = params[num];

if(!booted_skills[num]) {
	chain_th_vars = [0,noone];
	booted_skills[num] = true;
}

switch chain_th_vars[0] {
	case 0: //Align
		ang_off = scr_approach(ang_off, 0, 10);
		
		if(ang_off == 0){
			chain_th_vars[0] = 1;
		}
	break;
	
	case 1: //Throw
		chain_th_vars[2] = chargeup;
		chargeup = 0;
		
		chain_th_vars[1] = scr_create_damage_dealer(x+offx, y+offy,							
							parameters[1], owner, owner.ohko,			
							owner.stat[mult] * (1 + owner.modf[mult]),
							divi,						  
							4, kb_amount);
		
		chain_th_vars[1].owner = owner;
		chain_th_vars[1].num_links = round(chain_th_vars[2] * parameters[0]);
			
		visible = false;
		
		chain_th_vars[0] = 2;
	break;
	
	case 2: //Wait for it and end
		if(!instance_exists(chain_th_vars[1])){
			visible = true;
			
			alarm[num] = chain_th_vars[2] * cds[num] * room_speed;
			executing  = -1;
		
			if(amount > 0 and player_owned){
				amount--;
			}
		
			chain_th_vars[2] = 0;
			chain_th_vars[1] = noone;
			chain_th_vars[0] = 0;
		}
	break;
}
}