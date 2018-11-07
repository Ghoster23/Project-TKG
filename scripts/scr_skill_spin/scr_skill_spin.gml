///parameters - [ count, speed, damage dealer]
///spin_vars  - [ state, inverted flag, start angle, counter, dmd orientation]
{
var num = argument0;

var parameters = params[num];

if(not variable_instance_exists(id, "spin_vars")) { spin_vars = [0,1,angle,parameters[0],0]; }

switch spin_vars[0] {
	case 0: //Start
		if(ang_off == ang_off_base){
			spin_vars[1] =  1;
		}else {
			spin_vars[1] = -1;
		}
		
		angle += ang_off;
		
		ang_off = 0;
		
		spin_vars[2] = angle;
		
		spin_vars[3] = parameters[0];
		
		spin_vars[4] = ((ang_off + 45) div 90) mod 4 - 1;
		
		spin_vars[0] = 1; //Go to spin
	break;
	
	case 1: //Spin
		with(owner){
			physics_apply_impulse(phy_position_x,phy_position_y,
								  lengthdir_x(spin_vars[3],other.angle),lengthdir_y(spin_vars[3],other.angle));
		}
		
		angle = spin_vars[2];
		
		if(spin_vars[3] > 0){
			ang_off = scr_approach(ang_off,360,parameters[1]); //Approach target
			
			var ori = ((ang_off + 45) div 90) mod 4;
			
			if(ori != spin_vars[4]){
				var swing = scr_create_damage_dealer(x, y, parameters[2], owner, false, 
													owner.stat[mult] * (1 + owner.modf[mult]), divi,
													5, kb_amount);
		
				swing.phy_rotation = -(angle + ang_off);
				
				with owner {
					scr_entity_sprite_control(body_sprs, other.angle + other.ang_off, 0);
				}
		
				scr_sound(snd_sword_slash);
			
				spin_vars[2] = ori;
			}
		}else {
			parameters[0] = 2;
		}
		
		if(ang_off == 360){
			ang_off = 0;
			spin_vars[3]--;
		}
		
	break;
	
	case 2: //End
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		if(amount > 0 and player_owned){
			amount--;
		}
		
		spin_vars[0] = 0;
	break;
}

params[num] = parameters;
}