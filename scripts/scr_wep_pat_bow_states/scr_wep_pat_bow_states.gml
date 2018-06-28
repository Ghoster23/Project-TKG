switch pat_state {
	case 0: //Base		
		if(attack){
			if(wep_ammo > 0){
				pat_state = 1; //Go to Charging
			}else {
				attack = false;
			}
		}
		
	break;
	case 1: //Charging animation
		if(image_index < pat_img_ind_charged - pat_img_spd){
			image_speed = pat_img_spd;
		}else {
			image_speed   = 0;
			image_index	  = pat_img_ind_charged;
			pat_state = 2;
		}
		
	break;
	case 2: //Shoot
		wep_ammo--;
		attack = false;
		
		var xx  = x + lengthdir_x(30,angle);
		var yy  = y + lengthdir_y(30,angle);
		var rad = degtorad(angle);

		var arrow = scr_create_damage_dealer(xx,yy,wep_projectile,
											owner,owner.ohko,
											owner.stat[mult] * (1 + owner.modf[mult]),
											stats.def);
			
		arrow.dir = -rad /*+ random_range(-wep_proj_spread,wep_proj_spread)*/;
		arrow.spd = wep_proj_speed;
		
		image_index = 0;
		
		if(amount > 0){
			amount--;
		}
		
		alarm[pat_alarm] = pat_cd * room_speed;
		pat_state = 3;	
	break;
	case 3: //CD
		attack = false;
	break;
}