///@description Get everything in place
if(prev_hp != global.p_stats[stats.hp]){
	global.p_hurt = true;
	prev_hp = global.p_stats[stats.hp];
}

switch state{
	case 0: //Free
		if(len != 0){
			sprite_index = body_sprs[spr_side];
		}else {
			sprite_index = body_sprs[4];
			image_index  = spr_side;
		}
		
		head.image_index  = spr_side;
		head.image_xscale = image_xscale;
		
		hands.visible = hs;

		if(hands.visible){
			hands.image_index = spr_side;
			hands.image_xscale = image_xscale;
		}
	break;
	case 1: //Stuck
		head.image_index  = spr_side;
		head.image_xscale = image_xscale;
		
	break;
	case 2: //Dash
	break;
	case 3: //Dead
	break;
	case 4: //Idle
		sprite_index = body_sprs[4];
		spr_side     = 2;
		image_index  = spr_side; //Look forward
		
		head.image_index  = image_index;
		head.image_xscale = image_xscale;
	
		hands.visible      = true;
		hands.image_index  = image_index;
		hands.image_xscale = image_xscale;
	break;
}

x = phy_position_x;
y = phy_position_y;

hands.x = x;
hands.y = y;

head.x = x;
head.y = y - 16 + head_offset;

if(part_emitter_exists(global.ps_if,global.body_em)){
	part_emitter_region(global.ps_if,global.body_em,phy_position_x,phy_position_x,phy_position_y,phy_position_y,pt_shape_circle,ps_distr_gaussian);
}else {
	global.body_em = part_emitter_create(global.ps_if);
}