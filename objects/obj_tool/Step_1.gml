if(not global.pause){
	if(player_owned){
		key[0] = global.key_active[key_id.skill_1];
		key[1] = global.key_active[key_id.skill_2];
	}else {
		key[0] = owner.key[0];
		key[1] = owner.key[1];
	}
}

resetting = false;
	
if(executing == -1 and charging == -1){
	if(ang_off !=  ang_off_base && 
		ang_off != -ang_off_base){
		var d1 = abs(ang_off - ang_off_base) mod 360;
		var d2 = abs(ang_off + ang_off_base) mod 360;
		
		resetting = true;
		
		if(d1 > d2){
			ang_off = scr_approach(ang_off, -ang_off_base, 15);
		}else {
			ang_off = scr_approach(ang_off,  ang_off_base, 15);
		}
	}
		
	if(animation != 1 && image_index != 0){
		image_index = scr_approach(image_index, 0, chr_spd * 2);
			
		resetting = true;
	}
}