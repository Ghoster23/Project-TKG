///parameters  - [ node, head]
///pulse_vars - [ state, head_id]
{
var num = argument0;

var parameters = params[num];

if(not booted_skills[num]) { 
	pulse_vars = [0,noone];
	booted_skills[num] = true;
}

switch pulse_vars[0] {
	case 0: //Prepare
		pulse_vars[1] = instance_create_layer(x,y,"IF",parameters[1]); //Make the head
		
		with(pulse_vars[1]){ //Tell it you own it
			owner = other.id;
		}
		
		#region Collision
		xc = x + lengthdir_x(global.roomwd,angle);
		yc = y + lengthdir_y(global.roomwd,angle);
		
		var col = scr_smart_collision_line_detector(x,y,xc,yc,obj_entity_parent,true,true,obj_above_ground_parent);	
		#endregion

		#region Node
		var xx   = x + lengthdir_x(skill_dist,angle) + offx;
		var yy   = y + lengthdir_y(skill_dist,angle) + offy;
		var head = pulse_vars[1];

		var pr = scr_create_damage_dealer( col[0], col[1], parameters[0],
										owner, owner.ohko,
										owner.stat[mult] * (1 + owner.modf[mult]), divi);
		
		xc = col[0];
		yc = col[1];
		#endregion
		
		with(head){
			///Add new node
			node = pr;
			node_count++;
			
			///Reposition head
			x = xx;
			y = yy;
		}
		
		pulse_vars[0] = 1;
	break;
	
	case 1: //pulse
		var head = pulse_vars[1];
		
		if(!instance_exists(head)){
			pulse_vars[0] = 2;
		}
	break;
	
	case 2: //Finish
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		pulse_vars[1] = noone;
		
		pulse_vars[0] = 0;

		if(amount > 0 and player_owned){
			amount--;
		}
	break;
}

params[num] = parameters;
}