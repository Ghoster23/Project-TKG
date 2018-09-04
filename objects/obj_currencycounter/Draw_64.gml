if(obj_player_hud.visible){	
	scr_9SB_ext(spr_HUD_9SB, start_x * m, start_y * m, 
				(start_x + box_wd) * m, (start_y + box_hg) * m, m, m);
				
	draw_sprite_ext(spr_HUD_coin, 0, start_x * m, start_y * m, 
					m, m, 0, c_white, 1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font_chsl_tags);
	
	var r = ceil(m / 2);
	
	draw_text_transformed((start_x + 24) * m, (start_y + 8) * m, string(global.coins),
						  r, r, 0);
}