if(obj_player_hud.visible){
	//Weapon/Tool skills
	var equiped = global.body.weapon;
	
	var icons = equiped.icons;
	
	var cnt = 0;
		
	for(var i = 0; i < 4; i++){
		var data = icons[i];
		
		if(is_array(data)){
			var spr = data[0];
			var ind = data[1];
			var alr = equiped.alarm[i];
			var cd  = equiped.cds[i] * room_speed;
			
			var xx = (start_x + 32 * cnt) * m;
			var yy = gui_HG - start_y * m;
				
			scr_9SB_ext(spr_HUD_9SB, xx, yy, xx + 26 * m, yy + 26 * m, m, m);
			
			if(cd != 0){
				var p = scr_limmit((alr + 1) / cd, 0, 1);
			}else {
				var p = 0;
			}
				
			draw_sprite_ext(spr, ind, xx + 13 * m, yy + 13 * m, m / 2, m / 2, 0, c_black, 1);
			
			draw_sprite_part_ext(spr, ind, 0, 32 * p, 32, 32 - 32 * p,
								 xx + 5 * m, yy + 5 * m + (32 * p) * (m / 2), 
								 m / 2, m / 2, c_white, 1);
				
			switch i {
				case 0:
					var text = scr_keyname(global.key_binds[key_id.skill_1]);
				break;
				case 1:
					var text = "H-" + scr_keyname(global.key_binds[key_id.skill_1]);
				break;
				case 2:
					var text = scr_keyname(global.key_binds[key_id.skill_2]);
				break;
				case 3:
					var text = "H-" + scr_keyname(global.key_binds[key_id.skill_2]);
				break;
			}
				
			scr_boxed_text(xx, yy + 32 * m, c_white, c_black, ceil(m / 2),
							font_chsl_tags, text, spr_HUD_key);
				
			cnt++;
		}
	}
}
