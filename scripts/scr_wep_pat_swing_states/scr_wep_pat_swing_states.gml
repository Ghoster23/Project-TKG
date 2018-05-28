switch wep_pat_state {
	case 0: //Normal
		wep_ang_off  =  wep_ang_base;
		angle       +=  wep_ang_off;
		
		if(attack){
			wep_pat_state  = 2; //Go to windup
			wep_ang_target = wep_ang_off + wep_ang_windup;
		}
		
	break;
	
	case 1: //Inverted
		wep_ang_off  =  -wep_ang_swing;
		angle       +=   wep_ang_off;
		
		if(attack){
			wep_pat_state  = 3; //Go to windup
			wep_ang_target = wep_ang_off - wep_ang_windup;
		}
		
	break;
	
	case 2: //Normal - charging
		angle += wep_ang_off;
					
		if(attack){
			if(wep_ang_off < wep_ang_target){
				wep_ang_off = scr_approach(wep_ang_off,wep_ang_target,wep_windup_spd);
			}else {
				wep_ang_target = -(wep_ang_swing + wep_ang_windup);
				wep_pat_nstate =    1;
				wep_pat_state  =    4;
			}
		}else {
			wep_pat_state = 0;
		}
	break;
	
	case 3: //Inverted - charging
		angle += wep_ang_off;
					
		if(attack){
			if(wep_ang_off > wep_ang_target){
				wep_ang_off = scr_approach(wep_ang_off,wep_ang_target,wep_windup_spd);
			}else {
				wep_ang_target = wep_ang_swing + wep_ang_windup;
				wep_pat_nstate =   0;
				wep_pat_state  =   4;
			}
		}else {
			wep_pat_state = 1;
		}
	break;
	
	case 4: //Swing		
		var swing = scr_create_damage_dealer(x, y, obj_swing, owner, false, 
											owner.stat[mult] * (1 + owner.modf[mult]), stats.def,
											5, kb_amount);
		swing.phy_rotation = -angle;
		
		angle  = wep_ang_target;
		
		attack = false;
		
		if(amount > 0 and player_owned){
			amount--;
		}
								
	 	alarm[wep_pat_alarm] = wep_pat_cd * room_speed; 
		scr_sound(snd_sword_slash);
		wep_pat_state = 5;
	break;
	
	case 5: //Cooldown
		angle += wep_ang_off + wep_ang_target;
	break;
}