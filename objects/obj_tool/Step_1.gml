if(charging == -1 && executing == -1){
	rd_skills = [(alarm[0] == -1 && skills[0] != -1),
				 (alarm[1] == -1 && skills[1] != -1),
				 (alarm[2] == -1 && skills[2] != -1),
				 (alarm[3] == -1 && skills[3] != -1)];
}

if(not global.pause){
	if(player_owned){
		key[0] = (global.key_active[key_id.skill_1] && (rd_skills[0] || rd_skills[1]));
		key[1] = (global.key_active[key_id.skill_2] && (rd_skills[2] || rd_skills[3]));
	}else {
		key[0] = (                     owner.key[0] && (rd_skills[0] || rd_skills[1]));
		key[1] = (                     owner.key[1] && (rd_skills[2] || rd_skills[3]));
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