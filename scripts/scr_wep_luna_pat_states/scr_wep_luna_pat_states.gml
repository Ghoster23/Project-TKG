switch wep_pat_state {
	case 0: //Base
		if(attack_key xor mouse_r_key){
			wep_pat_state        = 1 + mouse_r_key; //Go to Charging
			wep_pat_charge_count = wep_pat_charge_time;
			
		}else if(wep_ammo == 0 || keyboard_check_released(ord("R"))){
			wep_pat_state = 7; //Go to Reload
			
		}
		
	break;
	case 1: //Charging left-click
		if(not attack_key){
			if(wep_ammo > 0){
				wep_pat_state = 3; //Go to Ice Shot
				
			}else {
				wep_pat_state = 0; //Go to base
				
			}
			
			wep_pat_charge_count = 0;
			
		}else if(wep_pat_charge_count == 0){
			if(global.p_LVB_water > 0){
				wep_pat_state = 5; //Go to Water gun
				
			}else {
				wep_pat_state = 0; //Go to base
				
			}
		}
		
	break;
	case 2: //Charging right-click
		if(not mouse_r_key){
			wep_pat_state        = 4; //Go to Frost Cloud
			wep_pat_charge_count = 0;
			
		}else if(wep_pat_charge_count == 0){
			wep_pat_state = 6; //Go to Ice Blocks
			
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
		
		if(wep_ammo > 0){
			alarm[wep_pat_alarm] = wep_pat_cd * room_speed;
			wep_pat_state        = 8; //Go to cooldown
		}else {
			wep_pat_state        = 7; //Go to reload
		}		
	break;
	case 4: //Frost Cloud
		if(wep_pat_frost_count == 0){
			var xx  = x + lengthdir_x(24,angle);
			var yy  = y + lengthdir_y(24,angle);
			var rad = degtorad(angle);
		
			instance_create_layer(xx-32,yy-32,"IF",obj_icy_wind);
		
			wep_pat_frost_count = wep_pat_frost_cd;
		}
		
		wep_pat_state = 0; //Go to Base
	break;
	case 5: //Throw water
		if(attack_key and global.p_LVB_water > 0){
			/*global.p_LVB_water -= 5;
			
			var xx  = x + lengthdir_x(24,angle);
			var yy  = y + lengthdir_y(24,angle);
			var rad = degtorad(angle);
			
			for(var i = 0; i < 5; i++){
				var water_ball = instance_create_layer(xx,yy,"IF",obj_water_ball);
				
				water_ball.dir    = -rad + random_range(-pi/9,pi/9);
				water_ball.spd    = 10;
				water_ball.damage =  0;
			}*/
			
		}else {
			wep_pat_state  = 0; //Go to base
			
		}
		
	break;
	case 6: //Blocks
		if(mouse_r_key){
			/*if(!instance_exists(obj_frost_circle)){
				fc = instance_create_layer(x,y,layer,obj_frost_circle);
			}*/
			
		}else {
			//fc.freeze = true;
			
			wep_pat_block_count = wep_pat_block_cd;
			wep_pat_state       = 0; //Go to base
			
		}
		
	break;
	case 7: //Reload
		if(wep_pat_reload_count == -1){
			if(wep_ammo < wep_capacity){
				wep_pat_reload_count = wep_pat_reload_cd;
			}else {
				wep_pat_state = 0;
			}
		}else {
			wep_pat_reload_count--;
				
			if(wep_pat_reload_count == 0){
				wep_ammo = wep_capacity;
				wep_pat_reload_count = -1;
				wep_pat_state = 0;
			}
		}
		
	break;
	case 8: //Cooldown
		if(alarm[wep_pat_alarm] == -1){
			wep_pat_state = 0;
		}
		
	break;
}

//Timers
if(wep_pat_frost_count > 0){
	wep_pat_frost_count--;
}
if(wep_pat_block_count > 0){
	wep_pat_block_count--;
}