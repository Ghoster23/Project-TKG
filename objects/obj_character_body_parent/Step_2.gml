///@description Get everything in place
if(prev_hp > stat[stats.hp]){
	hurt = true;
		
	//Stop flash
	if alarm[2] == -1{
		alarm[2] = 0.5 * room_speed;
	}
		
	//Shout
	if shout {
		scr_sound(snd_char1_hurt1,snd_char1_hurt2,snd_char1_hurt3,snd_char1_hurt4);
		shout = false;
	}

	prev_hp = stat[stats.hp];
}

//Flash red
if(hurt){
	//Flash red
    if(image_blend == c_white){
        image_blend = c_red;
        
	//Flash white
    }else if(image_blend == c_red){
		image_blend = c_white;       
	}
}

switch state{
	case 0: //Free
		if(len != 0){
			sprite_index = body_sprs[spr_side];
		}else {
			sprite_index = body_sprs[4];
			image_index  = spr_side;
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
	break;
	case 3: //Dead
	break;
	case 4: //Idle	
		hands.visible      = true;
		hands.image_index  = image_index;
		hands.image_xscale = image_xscale;
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
if inv and not (hurt or instance_exists(obj_roll)){
	inv = false;
}