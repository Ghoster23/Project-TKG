if(not global.pause){
	//Angle to draw at
	image_angle = angle + ang_off;

	if(90 < image_angle && image_angle < 270){
		image_yscale = -1;
	}else {
		image_yscale =  1;
	}
	
	if(!spr_cnt){
		spr_cnt = sprite_get_number(sprite_index) - 1;
	}
	
	switch animation {
		case 0:
			if(image_speed != 0 && executing == -1){
				image_speed = 0;
				image_index = 0;
			}
		break;
		
		case 1:
			image_speed = img_spd;
		break;
		
		case 2:
		break;
	}
}

if(amount != -1 and player_owned){
	scr_inv_set_pos(type,item,amount,obj_inventory_controller.tool_slot);
}

if(amount == 0 and player_owned){
	scr_tw_unequip();
}

x = owner.phy_position_x + offx;
y = owner.phy_position_y + offy;