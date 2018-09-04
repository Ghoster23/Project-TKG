switch pat_state {
	case 0: //Base
		if(instance_exists(progressbar)){
			instance_destroy(progressbar);
		}
		
		progressbar = noone;
		
		if(wep_ammo > 0 && alarm[pat_alarm] == -1){
			image_index = 1;
		}else {
			image_index = 0;
		}
		
		if(global.key_active[key_id.skill_1]){
			pat_state = 1; //Go to Charging
			
			chargeup    = false;
			//progressbar = scr_create_charge_up(x,y,pat_charge_time,self);
			
		}else if(global.key_active[key_id.skill_2]){
			pat_state = 2; //Go to Charging
			
		}
		
	break;
	case 1: //Charging left-click
		if(not global.key_active[key_id.skill_1]){
			instance_destroy(progressbar);
				
			if(image_index == 1){
				pat_state = 3; //Go to Ice Shot
			}else {
				pat_state = 0; //Go to base
			}
			
		}else{
			if(pat_block_count == -1){
				if(chargeup){
					pat_state = 5; //Go to Blocks of ice
				}
				
			}else {
				pat_state = 0; //Go to base
				instance_destroy(progressbar);
			}	
		}
	break;
	case 2: //Charging right-click
		if(global.key_active[key_id.skill_2]){
			if(global.p_LVB_water > 0){
				pat_state = 4; //Go to Water gun
				
			}else {
				pat_state = 0; //Go to base
				
			}

		}else {
			pat_state = 0; //Go to base

		}
		
	break;
	case 3: //Ice Shot
		wep_ammo--;
		
		var xx  = x + lengthdir_x(30,angle);
		var yy  = y + lengthdir_y(30,angle);
		var rad = degtorad(angle);
		
		part_emitter_region(em_sys,emitter,xx-16,xx+16,yy-16,yy+16,ps_shape_ellipse,ps_distr_linear);
		part_emitter_burst(em_sys,emitter,global.pt_haze,15);
		
		for(var i = 0; i < wep_proj_count; i++){
			var ice = scr_create_damage_dealer(xx,yy,obj_ice_shard,
												owner,owner.ohko,
												owner.stat[stats.satk] * (1 + owner.modf[stats.satk]),
												stats.sdef,1,60);
			
			ice.dir    = -rad + random_range(-wep_proj_spread,wep_proj_spread);
			ice.spd    = wep_proj_speed;
		}
		
		var mult = wep_proj_count * 30;
		
		with(global.body){
			physics_apply_impulse(phy_position_x,phy_position_y,-mult*cos(rad),mult*sin(rad));
		}
		
		image_index = 0;
		
		alarm[pat_alarm] = pat_cd * room_speed;
		pat_state = 0;
			
	break;
	case 4: //Throw water
		if(global.key_active[key_id.skill_2] and global.p_LVB_water > 0){
			global.p_LVB_water -= 1;
			
			var xx  = x + lengthdir_x(40,angle);
			var yy  = y + lengthdir_y(40,angle);
			var rad = -degtorad(angle);
			
			if(global.p_LVB_water mod 2 == 0){
				var water_ball = instance_create_layer(xx,yy,"IF",obj_water_gun_bullet);
			}else {
				var water_ball = instance_create_layer(xx,yy,"IF",obj_water_gun_fake_bullet);
			}
				
			if(instance_exists(prev_ball) and abs(prev_ball.dir - rad) < pi/4){
				water_ball.prev_bullet = prev_ball;
			}
				
			water_ball.dir = rad;
			water_ball.spd = 40;
			prev_ball = water_ball;
			
		}else {
			pat_state = 0; //Go to base
			prev_ball	  = noone;
			
		}
		
	break;
	case 5: //Blocks
		if(!global.key_active[key_id.skill_1]){
			instance_destroy(progressbar);
			var xx  = x + lengthdir_x(24,angle);
			var yy  = y + lengthdir_y(24,angle);
			instance_create_layer(xx,yy,layer,obj_freeze_wave);
			
			pat_block_count = pat_block_cd;
			pat_state       = 0; //Go to base
		}
		
	break;
}

angle -= 90;

//Timers
if(pat_frost_count > 0){
	pat_frost_count--;
	
	if(pat_frost_count == 0){
		pat_frost_count = -1;
	}
}

if(pat_block_count > 0){
	pat_block_count--;
	
	if(pat_block_count == 0){
		pat_block_count = -1;
	}
}

if(wep_ammo < wep_capacity){
	if(pat_reload_count == -1){
		pat_reload_count = pat_reload_cd;
	
	}else {
		pat_reload_count--;
				
		if(pat_reload_count == 0){
			wep_ammo++;
			pat_reload_count = -1;
		}
	}
}