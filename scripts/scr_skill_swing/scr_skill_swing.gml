{
var num = argument0;

var parameters = params[num];

switch parameters[0] {
	case 0: //Start
		parameters[0] = 1; //Go to windup
		
		if(ang_off == ang_off_base){
			parameters[1] = 1;
		}else {
			parameters[1] = -1;
		}
		
		parameters[4] = ang_off + parameters[2] * parameters[1]; //Calculate target angle
		
	break;
	
	case 1: //Charging
		if((parameters[1] == 1 && ang_off < parameters[4]) || (parameters[1] == -1 && ang_off > parameters[4])){
			ang_off = scr_approach(ang_off,parameters[4],parameters[5]); //Approach target
		}else {
			parameters[4] -= (parameters[3] + parameters[2]) * parameters[1]; //Determine new target
				
			parameters[0]  = 2; //Go to swing
		}
	break;
	
	case 2: //Swing		
		var swing = scr_create_damage_dealer(x, y, parameters[6], owner, false, 
											owner.stat[mult] * (1 + owner.modf[mult]), divi,
											5, kb_amount);
		
		swing.phy_rotation = -angle;
		ang_off = parameters[4];
		
		scr_sound(snd_sword_slash);
		
		parameters[0] = 0;
		
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		if(amount > 0 and player_owned){
			amount--;
		}
	break;
}

params[num] = parameters;
}