if(obj_player_hud.on){
	counter = obj_player_hud.counter;
	var m = global.ratio;

	var h_count = global.body.stat[stats.mhp] div 4;
	
	var hp = global.body.stat[stats.hp];

	switch state {
		case 0: //Be still
			if(global.body.damaged){
				state = 1;
				stop  = 2;
			}
		
			regen_c = scr_status_is_applied(statuses.regen,global.body);
		
			if(regen_c){
				state = 2;
				stop  = regen_c * room_speed * 0.5;
				reset = false;
			}
		break;
		case 1: //Shake
			var sh = random_range(-0.5,0.5);
			
			if(stop){
				anim_off[hp div 4] = sh;
			
				stop--;
			}else {
				reset = false;
			
				state = 3;
			}
		break;
		case 2: //Wave
			if(stop){
				for(var i = h_count; i > 0; i--){
					anim_off[i] = anim_off[i-1];
				}
				
				anim_off[0] = sin(counter / 3);
			
				stop--;
			}else {
				state = 3;
			}
		break;
		case 3: //Reset
			if(!reset){
				reset = true;
			
				for(var i = h_count; i > 0; i--){
					anim_off[i] = anim_off[i-1];
				
					if(anim_off[i] != 0){ reset = false;}
				}
		
				anim_off[0] = anim_off[0] * 0.5;
			}else {
				state = 0;
			}
		break;
	}

	for(var i = 0; i < h_count; i++){
		var ch = 0;
		
		if(hp > 4){
			ch = 4;
		}else {
			ch = hp;
		}
		
		draw_sprite_ext(spr_HUD_heart_slot, 0,
						(start_x + (i * heart_wd)) * m, (start_y + anim_off[i] * 3) * m,
						m, m, 0, c_white, 1);
	
		if hp > 0 {
			draw_sprite_ext(spr_HUD_heart, ch,
			(start_x + (i * heart_wd)) * m, (start_y + anim_off[i] * 3) * m,
			m, m, 0, c_white, 1);
		}
	
		hp -= ch;
	}
	
	var ar = global.body.stat[stats.arm];

	if(global.body.stat[stats.arm] > 0){	
		draw_sprite_ext(spr_HUD_armor,  0,
						(start_x + ((i + 1) * heart_wd)) * m, start_y * m,
						m, m, 0, c_white, 1);	
	}
}