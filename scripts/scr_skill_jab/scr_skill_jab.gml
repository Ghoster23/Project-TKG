///parameters - [ travel_length, speed, damage dealer]
///jab_vars  - [ state, travel, travel_f]
{
var num = argument0;

var parameters = params[num];

if(not booted_skills[num]) {
	jab_vars = [0,0,parameters[0]];
	booted_skills[num] = true;
}

switch jab_vars[0] {
	case 0: //go forward	
		
		//make travel appproach final travel distance
		jab_vars[1] = scr_approach(jab_vars[1], jab_vars[2], parameters[1]);
		var  travel = jab_vars[1];
		
		//change offx and offy of weapon (make it go forward)
		offx = lengthdir_x(travel,angle);
		offy = lengthdir_y(travel,angle);
		
		//if reach max position (perform attack)
		if(travel == jab_vars[2]){
			jab_vars[0] = 1;  //Go to come back statew
			var thrust = scr_create_damage_dealer(x+offx, y+offy, parameters[2], owner, owner.ohko, 
													owner.stat[mult] * (1 + owner.modf[mult]), divi,
													5, kb_amount);
			thrust.phy_rotation =  -angle;
		}
		
	break;
	
	case 1: //go back	
		//make travel appproach 0
		jab_vars[1] = scr_approach(jab_vars[1], 0, parameters[1]);
		var  travel = jab_vars[1];
		
		//change offx and offy of weapon (make it go bacwards)
		offx = lengthdir_x(travel,angle);
		offy = lengthdir_y(travel,angle);
		
		//if reach end position (perform attack)
		if(travel == 0){
			jab_vars[0] = 2;  //Go to end state
		}

	break;
	
	case 2: //End
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		if(amount > 0 and player_owned){
			amount--;
		}
		
		jab_vars[0] = 0;
	break;
}
}