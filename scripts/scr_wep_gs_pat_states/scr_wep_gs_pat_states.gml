switch wep_pat_state {
	case 0: //Normal
		wep_ang_off =  wep_ang_base;
		angle       +=  wep_ang_off;
		
		if(attack_key){
			wep_pat_state  = 2; //Go to windup
			wep_ang_target = wep_ang_off + wep_ang_windup;
			
		}else if(mouse_r_key){
			wep_pat_state  = 6;
			
		}
		
	break;
	case 1: //Inverted
		wep_ang_off =  -wep_ang_swing;
		angle       +=    wep_ang_off;
		
		if(attack_key){
			wep_pat_state  = 3; //Go to windup
			wep_ang_target = wep_ang_off - wep_ang_windup;
			
		}else if(mouse_r_key){
			wep_pat_state  = 6;
			
		}
		
	break;
	case 2: //Normal - charging
		angle += wep_ang_off;
					
		if(wep_ang_off < wep_ang_target){
			wep_ang_off = scr_aproach(wep_ang_off,wep_ang_target,wep_windup_spd);
			
		}else {
			wep_ang_target = -(wep_ang_swing + wep_ang_windup);
			wep_pat_nstate =    1;
			wep_pat_state  =    4;
			
		}
		
	break;
	case 3: //Inverted - charging
		angle += wep_ang_off;
					
		if(wep_ang_off > wep_ang_target){
			wep_ang_off = scr_aproach(wep_ang_off,wep_ang_target,wep_windup_spd);
			
		}else {
			wep_ang_target = wep_ang_swing + wep_ang_windup;
			wep_pat_nstate =   0;
			wep_pat_state  =   4;
			
		}

	break;
	case 4: //Swing
		angle += wep_ang_off;
					
		angle = wep_ang_target;
		var swing = instance_create_layer(x, y, "IF",obj_greatswing);
		swing.damage = dmg;
		
	 	alarm[wep_pat_alarm] = wep_pat_cd * room_speed; 
		scr_sound(snd_sword_slash);
		wep_pat_state = 5;
		
	break;
	case 5: //Cooldown
		angle += wep_ang_off + wep_ang_target;
		
	break;
	case 6: //Align
		angle += wep_ang_off;
		wep_ang_off = scr_aproach(wep_ang_off, -90, 9);
		
		if(wep_ang_off == -90){
			wep_pat_state = 7;
		}
	break;
	case 7: //Fire		
		if(tx == -1 && ty == -1){
			tx = x + lengthdir_x(1000, angle);
			ty = y + lengthdir_y(1000, angle);
		}
		
		angle += wep_ang_off;
		
		x += lengthdir_x(20,tx);
		y += lengthdir_y(20,ty);
		
		if((point_distance(tx,ty,x,y) <= 5) ||
		place_meeting(x,y,obj_above_ground_parent) ||
		place_meeting(x,y,obj_wall_parent)){
			wep_pat_state = 8;
		}
		
	break;
	case 8: //Come back
		x += lengthdir_x(10,global.body.x);
		y += lengthdir_y(10,global.body.y);
		
		if(point_distance(global.body.x,global.body.y,x,y) <= 5){
			wep_pat_state = wep_pat_nstate;
			tx = -1;
			ty = -1;
		}
	break;
}