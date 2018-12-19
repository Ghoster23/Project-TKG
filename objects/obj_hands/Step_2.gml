if(not instance_exists(body)){ instance_destroy(); }

#region Info from body
weapon = body.weapon;
hand   = body.hand;
offs   = body.offs;

visible      = body.visible;
image_xscale = body.image_xscale;
image_angle  = 0;
#endregion

#region Info from weapon
wep_exists = (weapon != noone and instance_exists(weapon));

if(wep_exists){
	wep_state  = weapon.state;
	handed     = weapon.handed;
	
	switch wep_state {
		case 0: //Drawn
			switch handed {
				case 1: //One
					if(body.spr_side == 1){
						offs  = weapon.offs + 1;
					}else {
						offs += 4;
					}
				break;
				
				case 0: //Two
					offs = weapon.offs + 1;
				break;
				
				case 2: //No
					offs += body.offs + 4 * ((body.spr_side == 1) ? -1 : 1);
				break;
			}
		break;
	
		case 1: //Stowed
			offs += body.offs + 4 * ((body.spr_side == 1) ? -1 : 1);
		break;
	}
}
#endregion