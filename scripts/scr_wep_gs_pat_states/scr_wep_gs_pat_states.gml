switch wep_pat_state {
	case 0: //Normal
		wep_ang_off =  wep_ang_base;
		angle       +=  wep_ang_off;
		
		if(attack_key){
			
			simple_attack = false;
			chargeup      = false;
			
			progressbar = scr_create_charge_up( x, y, 1.5 * room_speed, self);
			
			wep_pat_state  = 2; //Go to windup
			wep_ang_target = wep_ang_off + wep_ang_windup;
			
		}else if(mouse_r_key){
			simple_attack = false;
			wep_pat_state  = 6;
			
		}
		
	break;
	case 1: //Inverted
		wep_ang_off =  -wep_ang_swing;
		angle       +=    wep_ang_off;
		
		if(attack_key){
			
			simple_attack = false;
			chargeup      = false;
			
			progressbar = scr_create_charge_up( x, y, 1.5 * room_speed, self);
			
			wep_pat_state  = 3; //Go to windup
			wep_ang_target = wep_ang_off - wep_ang_windup;
			
		}else if(mouse_r_key){
			simple_attack = false;
			wep_pat_state  = 6;
			
		}
		
	break;
	case 2: //Normal - charging
		angle += wep_ang_off;
		
		if(attack_key_release){
			simple_attack = true;
		}
			
		if(wep_ang_off < wep_ang_target){
			wep_ang_off = scr_aproach(wep_ang_off,wep_ang_target,wep_windup_spd);
		}
		
		if(chargeup == true and simple_attack == true){
			instance_destroy(progressbar);
			chargeup= false;
			wep_ang_target = wep_ang_off - wep_ang_windup - 360;
			repeat360 = 1;
			originalangle = angle;
			wep_pat_state  =    9;	
		}
		else if(simple_attack == true and wep_ang_off >= wep_ang_target){
			instance_destroy(progressbar);
			wep_ang_target = -(wep_ang_swing + wep_ang_windup);
			wep_pat_nstate =    1;
			wep_pat_state  =    4;
		}
		
	break;
	case 3: //Inverted - charging
		angle += wep_ang_off;
		
		if(attack_key_release){
			simple_attack = true;
		}
		
		if(wep_ang_off > wep_ang_target){
			wep_ang_off = scr_aproach(wep_ang_off,wep_ang_target,wep_windup_spd);
		}
		
		if(chargeup == true and simple_attack == true){
			instance_destroy(progressbar);
			chargeup = false;
			wep_ang_target = wep_ang_off + wep_ang_windup + 360;
			repeat360 = 1;
			originalangle = angle;
			wep_pat_state  =    10;
		}
		else if(simple_attack == true and wep_ang_off <= wep_ang_target){
			instance_destroy(progressbar);
			wep_ang_target = wep_ang_swing + wep_ang_windup;
			wep_pat_nstate =   0;
			wep_pat_state  =   4;
		}

	break;
	case 4: //Swing
		with(global.body){
			physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(80,other.angle),lengthdir_y(80,other.angle));
		}
		angle += wep_ang_off;
					
		angle = wep_ang_target;
		
		scr_create_damage_dealer(x, y,											  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def);									  //Damage divider
		
	 	alarm[wep_pat_alarm] = wep_pat_cd * room_speed; 
		scr_sound(snd_sword_slash);
		wep_pat_state = 5;
		
	break;
	case 5: //Cooldown
		angle += wep_ang_off + wep_ang_target;
		
	break;
	case 6: //Align
	
		if(mouse_r_key_release){
			simple_attack = true;
		}
	
		angle += wep_ang_off;
		wep_ang_off = scr_aproach(wep_ang_off, -90, 9);
		
		if(wep_ang_off == -90 and simple_attack){
			simple_attack = false;
			wep_pat_state = 7;
		}
	break;
	case 7: //Fire		
		var t_sword = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatsword_t, owner,	owner.ohko,			  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 4, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
		t_sword.owner = owner; 
		wep_pat_state = 8;
								 
	break;
	case 8: //wait till it comes back
		visible = false;
		if(!instance_exists(obj_greatsword_t)){
			wep_pat_state = 0;
			visible=true;
		}
			
	break;
	
	case 9: //360 swing normal
		with(global.body){
			physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(60,other.angle),lengthdir_y(90,other.angle));
		}
		angle = originalangle; 
		angle += wep_ang_off;
		wep_ang_off = scr_aproach(wep_ang_off, wep_ang_target, 30);
		
		if (angle >= 360){
		     angle -= 360;
		}
		if (angle < 0){
		     angle += 360;
		}
		
		//Right
		if (angle > 315 or angle < 45){			    
			owner.spr_side     =   0;
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
								 
			swing.phy_rotation = 0;
		}
		//Up	
		else if angle < 135{  
			owner.spr_side     =   3; 
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = -90;
		}
		//Left
		else if angle < 225{
			owner.spr_side     =   2;   
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = -180;
		}
		//Down
		else if angle < 315{ 
			owner.spr_side    =    1;   
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = -180-90;
		}
		
		if(wep_ang_off ==  wep_ang_target){
			if(repeat360 == 0){
				wep_pat_state = 0;
			}else{
				wep_pat_state = 9;
				wep_ang_target = wep_ang_off - wep_ang_windup - 360;
				repeat360--;
			}
		}
		
	break;
	
	case 10: //360 swing inverse 
		with(global.body){
			physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(60,other.angle),lengthdir_y(90,other.angle));
		}
		angle = originalangle; 
		angle += wep_ang_off;
		wep_ang_off = scr_aproach(wep_ang_off, wep_ang_target, 30);
		
		if (angle >= 360){
		     angle -= 360;
		}
		if (angle < 0){
		     angle += 360;
		}
		//Right
		if (angle > 315 or angle < 45){			    
			owner.spr_side     =   0;      
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = 0;
		}
		//Up
		else if angle < 135{  
			owner.spr_side     =   3; 
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = -90;
		}
		//Left
		else if angle < 225{
			owner.spr_side     =   2;
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = -180;
		}
		//Down
		else if angle < 315{ 
			owner.spr_side    =    1;   
			var swing = scr_create_damage_dealer(x, y,							  //Position
								 obj_greatswing, owner,	owner.ohko,				  //Damage dealer and owner
								 owner.stat[stats.atk]*(1+owner.modf[stats.atk]), //Damage multiplier
								 stats.def, 									  //Damage divider
								 2, global.p_stats[stats.atk]*20);				  //Base damage and Knockback
			swing.phy_rotation = -180-90;
		}
		
		if(wep_ang_off ==  wep_ang_target){
			if(repeat360 == 0){
				wep_pat_state = 1;
			}else{
				wep_pat_state = 10;
				wep_ang_target = wep_ang_off - wep_ang_windup + 360;
				repeat360--;
			}
		}
	break;
}