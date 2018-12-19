///parameters  - [ speed, node, head]
///stream_vars - [ state, head_id]
{
var num = argument0;

var parameters = params[num];

if(not booted_skills[num]) { 
	stream_vars = [0,noone];
	booted_skills[num] = true;
}

switch stream_vars[0] {
	case 0: //Prepare		
		stream_vars[1] = instance_create_layer(skill_dist,skill_dist,"IF",parameters[2]); //Make the head
		
		with(stream_vars[1]){ //Tell it you own it
			owner = other.id;
		}
		
		stream_vars[0] = 1; //Go to shoot
	break;
	
	case 1: //Shoot
		///Determine spawn coords
		var xx   = x + lengthdir_x(skill_dist,angle) + offx;
		var yy   = y + lengthdir_y(skill_dist,angle) + offy;
		var rad  = degtorad(angle); ///Projectile movement direction
		var head = stream_vars[1];

		var pr = scr_create_projectile( xx, yy, parameters[1],
										owner, owner.ohko,
										parameters[0], -rad,
										owner.stat[mult] * (1 + owner.modf[mult]), divi);
		
		with(head){
			///Add new node
			ds_list_add(node_list,pr);
			node_count++;
			
			///Reposition head
			x = xx;
			y = yy;
		}
		
		//stream_vars[0] = 2; 
		
		if(not key[num div 2]){
			stream_vars[0] = 3;
		}
	break;
	
	/*
	case 2: //Rest
		var xx   = x + lengthdir_x(sprite_width,angle);
		var yy   = y + lengthdir_y(sprite_width,angle);
		var rad  = degtorad(angle);
		var head = stream_vars[1];

		var pr = scr_create_projectile( xx, yy, obj_stream_node_parent,
										owner, owner.ohko,
										parameters[1], -rad,
										owner.stat[mult] * (1 + owner.modf[mult]), divi);
		ds_list_add(head.node_list,pr);
		head.node_count++;
		
		with(head){
			x = xx;
			y = yy;
		}
	
		stream_vars[0] = 1;
		
		if(not key[num div 2]){
			stream_vars[0] = 3;
		}
	break;*/
	
	case 3: //Finish
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		with(stream_vars[1]){
			destroyed = true;
		}
		stream_vars[1] = noone;
		
		stream_vars[0] = 0;

		if(amount > 0 and player_owned){
			amount--;
		}
	break;
}

params[num] = parameters;
}