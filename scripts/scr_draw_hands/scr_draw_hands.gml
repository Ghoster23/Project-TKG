{
switch wep_state {
	case 1: //Idle
		image_index = body.spr_side;
	break;
	
	case 0: //Holding
		if(one_handed){
			//Hand that holds the weapon
			draw_sprite_ext(sprite_index, 5, weapon.x, weapon.y, 1, 1, weapon.image_angle, c_white, 1);
			
			if(hand){
				var xx = body.phy_position_x + 8;
			}else {
				var xx = body.phy_position_x - 8;
			}
			
			if(not global.char == 4 and body.len != 0){
				draw_sprite(sprite_index, 5, xx, y + 1);
			}
			return;
		}else {
			image_index = 4;
			image_angle = weapon.image_angle;
		}
	break;
}

draw_self();
}