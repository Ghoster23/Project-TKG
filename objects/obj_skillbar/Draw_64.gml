if(obj_player_hud.visible){
	//Weapon/Tool skills
	var equiped = global.body.weapon;
	
	if(equiped.object_index == global.weapon){
		var icons = scr_char_skills();
		
		var spr = icons[0];
		var cnt = 0;
		
		for(var i = 0; i < 4; i++){
			var ind = icons[i+1];
			
			if(ind != -1){
				var xx = (start_x + 40 + 32 * cnt) * m;
				var yy = gui_HG - 54 * m;
				
				scr_9SB_ext(spr_HUD_9SB, xx, yy, xx + 26 * m, yy + 26 * m, m, m);
				
				draw_sprite_ext(spr, ind, xx + 13 * m, yy + 13 * m, ceil(m / 2), ceil(m / 2), 0, c_white, 1);
				
				switch i {
					case 0:
						var text = scr_keyname(global.key_binds[key_id.skill_1]);
					break;
					case 1:
						var text = scr_keyname(global.key_binds[key_id.skill_2]);
					break;
					case 2:
						var text = "H-" + scr_keyname(global.key_binds[key_id.skill_1]);
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
}