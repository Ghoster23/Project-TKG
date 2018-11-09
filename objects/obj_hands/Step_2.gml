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
	one_handed = weapon.one_handed;
	
	switch wep_state {
		case 0: //Drawn
			if(one_handed){
				if(body.spr_side == 1){
					offs  = weapon.offs + 1;
				}else {
					offs += 4;
				}
			}else {
				offs = weapon.offs + 1;
			}
		break;
	
		case 1: //Stowed
			offs += 4 * ((body.spr_side == 1) ? 1 : -1);
		break;
	}
}
#endregion