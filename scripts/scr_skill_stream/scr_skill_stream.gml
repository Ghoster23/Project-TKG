{
var num = argument0;

var parameters = params[num];

switch parameters[0] {
	case 0: //Prepare		
		parameters[3] = instance_create_layer(x,y,"IF",parameters[4]);
		
		with(parameters[3]){ 
			owner = other.id;
		}
		
		parameters[0] = 1;
	break;
	
	case 1: //Shoot		
		var xx  = x + lengthdir_x(sprite_width,angle);
		var yy  = y + lengthdir_y(sprite_width,angle);
		var rad = degtorad(angle);
		var head = parameters[3];

		var pr = scr_create_projectile( xx, yy, parameters[2],
										owner, owner.ohko,
										parameters[1], -rad,
										owner.stat[mult] * (1 + owner.modf[mult]), divi);
		ds_list_add(head.node_list,pr);
		head.node_count++;
		
		with(head){
			x = xx;
			y = yy;
		}
		
		parameters[0] = 2;
		
		if(not key[num div 2]){
			parameters[0] = 3;
		}
	break;
	
	case 2: //Rest
		var xx  = x + lengthdir_x(sprite_width,angle);
		var yy  = y + lengthdir_y(sprite_width,angle);
		var rad = degtorad(angle);
		var head = parameters[3];

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
	
		parameters[0] = 1;
		
		if(not key[num div 2]){
			parameters[0] = 3;
		}
	break;
	
	case 3: //Finish
		alarm[num] = cds[num] * room_speed;
		executing  = -1;
		
		with(parameters[3]){
			destroyed = true;
		}
		
		parameters[0] = 0;

		if(amount > 0 and player_owned){
			amount--;
		}
	break;
}

params[num] = parameters;
}