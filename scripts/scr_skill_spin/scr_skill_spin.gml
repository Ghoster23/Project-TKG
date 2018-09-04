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
		
		parameters[3] = ang_off + parameters[2] * parameters[1]; //Calculate target angle
		
	break;
	
	case 1: //Charging
		if((parameters[1] == 1 && ang_off < parameters[3]) || (parameters[1] == -1 && ang_off > parameters[3])){
			ang_off = scr_approach(ang_off,parameters[3],parameters[4]); //Approach target
		}else {
			parameters[3] = angle + ang_off; //Determine original target
			
			angle += angle_off;
			
			angle_off = 0;
			
			parameters[7] = parameters[6];
			
			parameters[8] = ((ang_off + 45) div 90) mod 4 - 1;
				
			parameters[0] = 2; //Go to swing
		}
	break;
	
	case 2: //Spin
		with(owner){
			physics_apply_impulse(phy_position_x,phy_position_y,
								  lengthdir_x(parameters[9],other.angle),lengthdir_y(parameters[9],other.angle));
		}
		
		angle = parameters[3];
		
		if(parameters[7] > 0){
			ang_off = scr_approach(ang_off,360,parameters[4]); //Approach target
			
			var ori = ((ang_off + 45) div 90) mod 4;
			
			if(ori != parameters[8]){
				var swing = scr_create_damage_dealer(x, y, parameters[5], owner, false, 
													owner.stat[mult] * (1 + owner.modf[mult]), divi,
													5, kb_amount);
		
				swing.phy_rotation = -(angle + ang_off);
				
				with owner {
					scr_entity_sprite_control(body_sprs, other.angle + other.ang_off, 0);
				}
		
				scr_sound(snd_sword_slash);
			
				parameters[8] = ori;
				parameters[7]--;
			}
		}
		
		if(ang_off == 360){
			ang_off = 0;
		}
		
	break;
	
	case 3: //End
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		if(amount > 0 and player_owned){
			amount--;
		}
	break;
}

params[num] = parameters;
}