frame += image_speed;

if(!booted and jump){
	booted = true;
	
	#region Sprite
	switch type {
		default:
		
		break;
		
		case item_type.equipable:
			sprite_index = spr_i_equip;
		break;
		
		case item_type.potion:
			sprite_index = spr_i_potion_flask;
			image_index  = amount;
		break;
	
		case item_type.chess_piece:
			sprite_index = spr_i_chess_piece;
		break;
	}
	#endregion
	
	shd_wd_r = (bbox_right  - bbox_left) / 32;
	
	if(dir){
		dir = random_range(0,360);
	}else {
		dir = point_direction(global.body.phy_position_x,global.body.phy_position_y,mouse_x,mouse_y);
	}
	
	physics_apply_impulse(x, y, lengthdir_x(10, dir ),lengthdir_y(10,dir));

	z         =     0;
	zzero     =     0;
	speedzero =    50;
	t         =     0;
	a         =   -20;
	stop      = false;
	bounce    = false;
	zmax      = zzero + ((speedzero*speedzero)/(2*-a));
	phy_linear_damping=0.5;

	modulator   = 1;
	draw_script = scr_draw_item_jump;
}