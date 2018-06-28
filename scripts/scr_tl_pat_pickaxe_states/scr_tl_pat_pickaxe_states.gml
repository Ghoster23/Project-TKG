switch pat_state {
	case 0: //Normal
		tl_ang_off  =  tl_ang_base;
		angle      +=  tl_ang_off;
		
		if(use){
			pat_state  = 2; //Go to windup
			tl_ang_target = tl_ang_off + tl_ang_windup;
		}
		
	break;
	
	case 1: //Inverted
		tl_ang_off  =  -tl_ang_swing;
		angle       +=   tl_ang_off;
		
		if(use){
			pat_state  = 3; //Go to windup
			tl_ang_target = tl_ang_off - tl_ang_windup;
		}
		
	break;
	
	case 2: //Normal - charging
		angle += tl_ang_off;
					
		if(use){
			if(tl_ang_off < tl_ang_target){
				tl_ang_off = scr_approach(tl_ang_off,tl_ang_target,tl_windup_spd);
			}else {
				tl_ang_target = -(tl_ang_swing + tl_ang_windup);
				pat_nstate =    1;
				pat_state  =    4;
			}
		}else {
			pat_state = 0;
		}
	break;
	
	case 3: //Inverted - charging
		angle += tl_ang_off;
					
		if(use){
			if(tl_ang_off > tl_ang_target){
				tl_ang_off = scr_approach(tl_ang_off,tl_ang_target,tl_windup_spd);
			}else {
				tl_ang_target = tl_ang_swing + tl_ang_windup;
				pat_nstate =   0;
				pat_state  =   4;
			}
		}else {
			pat_state = 1;
		}
	break;
	
	case 4: //Swing		
		var rock = collision_circle(lengthdir_x(24,angle),lengthdir_y(24,angle),16,obj_rock,false,false);
		
		if(rock != noone){
			rock.exploded = true;
		}
		
		angle  = tl_ang_target;
		
		use = false;
		
		if(amount > 0 and player_owned){
			amount--;
		}
								
	 	alarm[pat_alarm] = pat_cd * room_speed; 
		scr_sound(snd_sword_slash);
		pat_state = 5;
	break;
	
	case 5: //Cooldown
		angle += tl_ang_off + tl_ang_target;
	break;
}