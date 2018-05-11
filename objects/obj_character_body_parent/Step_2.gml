///@description Get everything in place
if(prev_hp != stat[stats.hp]){
	if(prev_hp > stat[stats.hp]){
		damaged = true;
		
		//Flash timer
		alarm[2] = 0.5 * room_speed;
		
		//Shout
		if(shout){
			scr_sound(snd_char1_hurt1,snd_char1_hurt2,snd_char1_hurt3,snd_char1_hurt4);
			shout = false;
		}
		
		if(stat[stats.hp] <= 0){
			dead = true;
		}
	}

	prev_hp = stat[stats.hp];
}

if(not global.pause){
	//Flash red
	if(damaged){
		image_blend = scr_toggle(image_blend,c_white,c_red);
	}else {
		image_blend = c_white;
	}
}

switch state{
	case 0: //Free
		image_xscale = 1;
		
		if(len != 0){
			sprite_index = body_sprs[spr_side];
			image_speed  = is * len;
			
		}else {
			sprite_index = body_sprs[4];
			image_index  = spr_side;
			image_speed = 0;
			
		}
		
		hands.visible = hs;

		if(hands.visible){
			hands.image_index = spr_side;
			hands.image_xscale = image_xscale;
		}
	break;
	case 1: //Stuck
	break;
	case 2: //Dash						
		image_speed  = is * len * 0.5;
		sprite_index = roll_sprs[spr_side];
			
		if(spr_side == 3){
			image_xscale = -1;
		}
			
		inv = true;
	break;
	case 3: //Dead
	break;
	case 4: //Idle
		image_speed   = 0.4;
		sprite_index  = body_sprs[5];
		hands.visible = true;
	break;
}

x = phy_position_x;
y = phy_position_y;

hands.x = x;
hands.y = y;

if(part_emitter_exists(global.ps_if,global.body_em)){
	part_emitter_region(global.ps_if,global.body_em,phy_position_x,phy_position_x,phy_position_y,phy_position_y,pt_shape_circle,ps_distr_gaussian);
}else {
	global.body_em = part_emitter_create(global.ps_if);
}

///Invulnerabillity guaranteed off
if(inv and not instance_exists(obj_roll)){
	inv = false;
}