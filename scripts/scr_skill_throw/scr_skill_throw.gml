///parameters - [ impulse, damage dealer]
///chain_th_vars - [ state, inst id, charge]
{
var num = argument0;

var parameters = params[num];

var dmg_dl = scr_create_damage_dealer(x, y, parameters[1], owner, false, 
									owner.stat[mult] * (1 + owner.modf[mult]), divi,
									5, kb_amount);

var dir = -angle;

with dmg_dl {
	physics_apply_impulse(phy_position_x,phy_position_y,
							lengthdir_x(parameters[0],dir)*chargeup,
							lengthdir_y(parameters[0],-dir)*chargeup);
}

alarm[num] = cds[num] * room_speed;
executing  = -1;
		
if(amount > 0 and player_owned){
	amount--;
}

chargeup = 0;
}