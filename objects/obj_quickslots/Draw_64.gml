if(obj_player_hud.visible){
	///Consumable
	var text = scr_keyname(global.key_binds[key_id.consume]);
	var slot = scr_inv_get_pos(obj_inventory_controller.consumable);
	
	//scr_boxed_text((start_x + 2/3 * box_wd) * m, (start_y + 5/3 * box_hg) * m, c_white, c_black, m div 2,
	//				font_ig_menu, text, spr_HUD_key);
	
	scr_9SB_ext(spr_HUD_9SB, (start_x + 2/3 * box_wd) * m, (start_y + 2/3 * box_hg) * m, 
						 (start_x + 5/3 * box_wd) * m, (start_y + 5/3 * box_hg) * m, m, m);
	
	if(slot[0] != -1){
		scr_draw_item(slot[0], slot[1], slot[2],
					  (start_x + 7/6 * box_wd) * m - 16 * ceil(m / 2),
					  (start_y + 7/6 * box_hg) * m - 16 * ceil(m / 2), 
					  ceil(m / 2), ceil(m / 2), 1);
	}
	
	///Weapon - Tool - Active
	var text = scr_keyname(global.key_binds[key_id.utilize]);
	var slot = scr_inv_get_pos(obj_inventory_controller.tool_slot);
	
	//scr_boxed_text(start_x * m, (start_y + box_hg) * m, c_white, c_black, m div 2,
	//				font_chsl_tags, text, spr_HUD_key);
	
	scr_9SB_ext(spr_HUD_9SB, start_x * m, start_y * m,
				(start_x + box_wd) * m, (start_y + box_hg) * m,
				m, m);
	
	if(slot[0] != -1){
		scr_draw_item(slot[0], slot[1], slot[2],
					  (start_x + 0.5 * box_wd) * m - 16 * ceil(m / 2),
					  (start_y + 0.5 * box_hg) * m - 16 * ceil(m / 2), 
					  ceil(m / 2), ceil(m / 2), 1);
		
		switch slot[0] {
			case item_type.tl_n_wep:
				draw_set_halign(fa_center);
				draw_set_valign(fa_bottom);
				draw_set_font(font_chsl_name);
				
				draw_text_ext_transformed((start_x + box_wd) * m, start_y * m, "x" + string(slot[2]),0,
										  300, m, m, 0);
			break;
			
			case item_type.active:
				var charge = (slot[2] / scr_active_get_data(slot[1])) * 19;
				
				draw_sprite_ext(spr_HUD_activebar, 0, (start_x - 8) * m, start_y * m, m, m, 0, c_white, 1);
				draw_sprite_ext(spr_HUD_activebar, charge, (start_x - 8) * m, start_y * m, m, m, 0, scr_char_color(), 1);
				
			break;
		}
	}
}