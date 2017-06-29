depth = -y;

if instance_exists(obj_CH_tree_state){

if obj_CH_tree_state.state == 2 and state != 5{
	state = 5;
}

switch	state{
	case 0:
		//Burrow out
		sprite_index = spr_CH_root;
		image_speed = 1;
		visible = true;

		obj_CH_tree_state.ph = 0;
		
		state = 1;
	break;
	case 1:
		//Idle
		if sprite_index != spr_CH_root_idle and image_index >= 8{
			sprite_index = spr_CH_root_idle;
			image_speed = 1;
			alarm[0] = 1 * room_speed;
		}
		
	break;
	case 2:
		//Swing
		if sprite_index == spr_CH_root_idle{
			if obj_CH_tree_state.ph == 2{
				state = 3;
			}
			
			if obj_CH_tree_state.ph == 0 and swing == false{
				sprite_index = spr_CH_root_swing_d;
				image_index = 0;
				image_speed = 1;
				swing = true;
				
			}
			
		}
		
		if image_index >= 15 and sprite_index == spr_CH_root_swing_d{
			sprite_index = spr_CH_root_idle;
			image_speed = 1;
			swing = false;
			
		
			obj_CH_tree_state.ph = 1;
		}
		
	break;
	case 3:
		alarm[1] = 1 * room_speed;
		state = 4;
			
	break;
	case 4:
	break;
	case 5:
		//Jab
		if sprite_index == spr_CH_root_idle and obj_CH_tree_state.ph == 2{
			sprite_index = spr_CH_root_jab;
			image_index = 0;
				
			image_speed = 1;
			jab = true;
		}
		
		if jab == true and place_meeting(x,y,obj_body){
			global.p_hp -= global.b_atk div global.p_def;
			visible = true;
			global.p_inv = true;
			
		}
		
		if image_index >= 17 and sprite_index != spr_CH_root_idle{
			sprite_index = spr_CH_root_idle;
			image_speed = 1;
			jab = false;
			
			obj_CH_tree_state.ph = 3;
			alarm[2] = 1 * room_speed;
		}
		
	break;
	case 6:
		if sprite_index != spr_CH_root{
			sprite_index = spr_CH_root;
			image_speed = -1;
			image_index = 9;
			
		}else if image_index <= 2 and visible == true{
			image_speed = 0;
			visible = false;
			obj_CH_tree_state.state = 3;
			
		}
		
		if obj_CH_tree_state.ph == 66{
			state = 0;
		}
		
	break;
}
}else { 
	instance_destroy();
	
}