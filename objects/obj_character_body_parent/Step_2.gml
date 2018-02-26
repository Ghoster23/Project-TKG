///@description Get everything in place
switch state{
	case 0:
		if(len != 0){
			sprite_index = body_sprs[spr_side];
		}else {
			sprite_index = body_sprs[4];
			image_index  = spr_side;
		}
	break;
	case 1:
	break;
	case 2:
	break;
	case 3:
	break;
}

head.image_index  = spr_side;
head.image_xscale = image_xscale;

hands.image_index = spr_side;
hands.image_xscale = image_xscale;

x = phy_position_x;
y = phy_position_y;

head.x = x;
head.y = y - 16 + head_offset;

if(part_emitter_exists(global.ps_if,global.body_em)){
	part_emitter_region(global.ps_if,global.body_em,phy_position_x,phy_position_x,phy_position_y,phy_position_y,pt_shape_circle,ps_distr_gaussian);
}else {
	global.body_em = part_emitter_create(global.ps_if);
}