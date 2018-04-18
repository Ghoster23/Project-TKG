switch wep_pat_state {
	case 0: //Base
		if(attack_key){
			if(wep_ammo){
				wep_pat_state  = 1; //Go to shoot
				
			}else {
				wep_pat_state  = 2; //Go to icy wind
				
			}
			
		}else if(mouse_r_key){
			if(!wep_potion){
				wep_pat_state  = 4; //Go to throw water
				
			}else {
				wep_pat_state  = 5; //Go to drink potion
				
			}
		}else if(keyboard_check_released(ord("R"))){
			wep_pat_state = 3; //Go to reload
			
		}
		
	break;
	case 1: //Shoot
		wep_ammo--;
		
		var xx  = x + lengthdir_x(24,angle);
		var yy  = y + lengthdir_y(24,angle);
		var rad = degtorad(angle);
		
		for(var i = 0; i < wep_proj_count + 1; i++){
			var ice = instance_create_layer(xx,yy,"IF",obj_ice_shard);
			
			ice.dir    = -rad + random_range(-wep_proj_spread,wep_proj_spread);
			ice.spd    = wep_proj_speed;
			ice.damage = dmg;
		}
		
		var mult = wep_proj_count * 2;
		
		with(global.body){
			physics_apply_impulse(phy_position_x,phy_position_y,-mult*cos(rad),mult*sin(rad));
		}
		
		alarm[wep_pat_alarm] = wep_pat_cd * room_speed;
		wep_pat_state        = 6; //Go to cooldown
	break;
	case 2: //Icy wind
		var xx  = x + lengthdir_x(8,angle);
		var yy  = y + lengthdir_y(8,angle);
		
		var ice = instance_create_layer(xx,yy,layer,obj_icy_wind);
		ice.dir    = degtorad(angle);
		ice.spd    = 5;
		ice.damage = dmg * 0.5;
		
		alarm[wep_pat_alarm] = 2 * wep_pat_cd * room_speed;
		wep_pat_state        = 6; //Go to cooldown
		
	break;
	case 3: //Reload
		if(wep_capacity > wep_ammo){ //If under capacity
			if(alarm[wep_pat_reload_alarm] == -1){ //Start Reloading
				var diff = wep_capacity - wep_ammo;
			
				alarm[wep_pat_reload_alarm] = diff * wep_pat_reload_cd * room_speed;
				
			}else if(alarm[1] mod (0.1 * room_speed) == 0){ //Regain one shot
				wep_ammo += wep_pat_reload_rate;
				
				if(wep_ammo > wep_capacity){
					wep_ammo = wep_capacity;
				}				
			}
		}else { //If not
			wep_pat_state = 0; //Go to base state
			
		}
		
	break;
	case 4: //Throw water
		wep_pat_state  = 0; //Go to base
		
	break;
	case 5: //Drink Potion
		wep_pat_state  = 0; //Go to base
		
	break;
	case 6: //Cooldown
		if(alarm[0] == -1){
			wep_pat_state = 0;
		}
	break;
}