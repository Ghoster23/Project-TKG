#region Update inventory
if(amount != -1 and player_owned){
	scr_inv_set_pos(type,item,amount,slot);
}

if(amount == 0 and player_owned){
	scr_tw_unequip();
}
#endregion

//Angle to draw at
switch state {
	case 0:
		image_angle = angle + ang_off;
			
		#region Flip weapon
		if(abs(p_image_angle - image_angle) > 5){
			if(90 < image_angle && image_angle < 270){
				image_yscale = -1;
			}else{
				image_yscale =  1;
			}
		
			p_image_angle = image_angle;
		}
		#endregion
	break;
		
	case 1:
		image_angle = 90;
	break;
}

if(not global.pause){
	#region Animate
	switch animation {
		case 0: //On skill use animation
			if(image_speed != 0 && executing == -1){
				image_speed = 0;
				image_index = 0;
			}
		break;
		
		case 1: //Never animated
		break;
		
		case 2: //Always animated
			image_speed = img_spd;
		break;
		
		case 3: //Frames per direction
			image_speed = 0;
			var a = image_angle;
			
			var inc = 360 / image_number;
			
			image_index = (image_angle + inc/2) div inc;
			image_angle = a - image_index * inc;
			
			image_yscale = 1;
		break;
	}
	#endregion
}

#region Positioning
switch state {
	case 0:
		#region Drawn
		switch(handed){
			case 0: //two_handed
				#region Two-handed
				var xx = 0;
				var yy = 0;
			
				switch(owner.spr_side){
					case 0:
					case 2:
					case 3:
						offs =  4;
					break;
				
					case 1:
						offs = -4;
					break;
				}
				#endregion
			break;
			
			case 1: //one_handed
				#region One-handed
				switch(owner.spr_side){
					case 0:
					case 2:
						var xx = 4;
						offs = (hand == 1 ? 4 : -4) * (owner.spr_side == 0 ? 1 : -1);
					break;
		
					case 1:
					case 3:
						var xx = (owner.spr_side == 1 ? -7 : 7);
						offs = (owner.spr_side == 1 ? -4 : 4);
					break;
				}
		
				var yy = 0;
	
				if(hand){
					xx = -xx;
				}
				#endregion
			break;
			
			case 2: //no_handed
				#region No-handed
				var xx = 0;
				var yy = 0;
			
				switch(owner.spr_side){
					case 3:
						offs =  4;
					break;
				
					case 0:
					case 2:
					case 1:
						offs = -4;
					break;
				}
				#endregion
			break;
		}
		#endregion
	break;
	
	case 1:
		#region Stowed
		switch(owner.spr_side){
			case 0:
				var xx = -8;
				offs = -6;
			break;
			
			case 3:
				var xx = 0;
				offs = -6;
			break;
			
			case 2:
				var xx = 8;
				offs = -6;
			break;
		
			case 1:
				var xx = 0;
				offs =  6;
			break;
		}
		
		var yy = 0;		
		#endregion
	break;
}

offs = offs + owner.offs;

x = owner.phy_position_x + xx + offx;
y = owner.phy_position_y + yy + offy;
#endregion