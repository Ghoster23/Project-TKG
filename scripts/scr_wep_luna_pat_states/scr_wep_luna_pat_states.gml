switch wep_pat_state {
	case 0: //Base
		if(wep_ammo > 0){
			image_index = 0;
		}else {
			image_index = 1;
		}
		
		if(attack_key xor mouse_r_key){
			wep_pat_state = 1 + mouse_r_key; //Go to Charging
			
			chargeup    = false;
			progressbar = scr_create_charge_up(x,y,wep_pat_charge_time,self);
			
		}
		
	break;
	case 1: //Charging left-click
		if(not attack_key){
			instance_destroy(progressbar);
				
			if(wep_ammo > 0){
				wep_pat_state = 3; //Go to Ice Shot
			}else {
				wep_pat_state = 0; //Go to base
			}
			
		}else{
			if(global.p_LVB_water > 0){
				if(chargeup){
					wep_pat_state = 5; //Go to Water gun
					instance_destroy(progressbar);
				}
			}else {
				wep_pat_state = 0; //Go to base
				instance_destroy(progressbar);
			}	
		}
	break;
	case 2: //Charging right-click
		if(not mouse_r_key){
			instance_destroy(progressbar);
				
			if(wep_pat_frost_count == -1){
				wep_pat_state = 4; //Go to Frost Cloud
				
			}else {
				wep_pat_state = 0; //Go to base
				
			}
			
		}else{
			if(wep_pat_block_count == -1){
				if(chargeup){
					wep_pat_state = 6; //Go to Blocks of ice
				
				}
			}else {
				wep_pat_state = 0; //Go to base
				instance_destroy(progressbar);
				
			}	
		}
		
	break;
	case 3: //Ice Shot
		wep_ammo--;
		
		var xx  = x + lengthdir_x(24,angle);
		var yy  = y + lengthdir_y(24,angle);
		var rad = degtorad(angle);
		
		part_emitter_region(em_sys,emitter,xx-16,xx+16,yy-16,yy+16,ps_shape_ellipse,ps_distr_linear);
		part_emitter_burst(em_sys,emitter,global.pt_haze,15);
		
		for(var i = 0; i < wep_proj_count + 1; i++){
			var ice = scr_create_damage_dealer(xx,yy,obj_ice_shard,
												owner,owner.ohko,
												owner.stat[stats.satk] * (1 + owner.modf[stats.satk]),
												stats.sdef);
			
			ice.dir    = -rad + random_range(-wep_proj_spread,wep_proj_spread);
			ice.spd    = wep_proj_speed;
		}
		
		var mult = wep_proj_count * 2;
		
		with(global.body){
			physics_apply_impulse(phy_position_x,phy_position_y,-mult*cos(rad),mult*sin(rad));
		}
		
		alarm[wep_pat_alarm] = wep_pat_cd * room_speed;
		wep_pat_state        = 7; //Go to cooldown
			
	break;
	case 4: //Frost Cloud
		var xx  = x + lengthdir_x(24,angle);
		var yy  = y + lengthdir_y(24,angle);
		var rad = degtorad(angle);
		
		var ice = scr_create_damage_dealer(xx,yy,obj_icy_wind,
												owner,false,
												0,
												stats.sdef);
			
		ice.dir    = -rad;
		ice.spd    =  150;
		
		wep_pat_frost_count = wep_pat_frost_cd;
		
		wep_pat_state = 0; //Go to Base
	break;
	case 5: //Throw water
		if(attack_key and global.p_LVB_water > 0){
			global.p_LVB_water -= 1;
			
			if(global.p_LVB_water mod 2 == 0){
				var xx  = x + lengthdir_x(24,angle);
				var yy  = y + lengthdir_y(24,angle);
				var rad = degtorad(angle);
			
				var water_ball = instance_create_layer(xx,yy,"IF",obj_water_ball);
				water_ball.prev_ball = prev_ball;
				prev_ball = water_ball;
			}
			
		}else {
			wep_pat_state  = 0; //Go to base
			prev_ball = noone;
			
		}
		
	break;
	case 6: //Blocks
		if(!mouse_r_key){
			instance_destroy(progressbar);
			instance_create_layer(x,y,layer,obj_freeze_wave);
			
			wep_pat_block_count = wep_pat_block_cd;
			wep_pat_state       = 0; //Go to base
		}
		
	break;
	case 7: //Cooldown
		if(alarm[wep_pat_alarm] == -1){
			wep_pat_state = 0;
			image_index   = 0;
		}
		
	break;
}

angle -= 90;

//Timers
if(wep_pat_frost_count > 0){
	wep_pat_frost_count--;
	
	if(wep_pat_frost_count == 0){
		wep_pat_frost_count = -1;
	}
}

if(wep_pat_block_count > 0){
	wep_pat_block_count--;
	
	if(wep_pat_reload_count == 0){
		wep_pat_block_count = -1;
	}
}

if(wep_ammo < wep_capacity){
	if(wep_pat_reload_count == -1){
		wep_pat_reload_count = wep_pat_reload_cd;
	
	}else {
		wep_pat_reload_count--;
				
		if(wep_pat_reload_count == 0){
			wep_ammo++;
			wep_pat_reload_count = -1;
		}
	}
}