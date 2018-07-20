if(obj_player_hud.on){
	var m = global.ratio;
	
	scr_9SB_ext(spr_HUD_9SB, (start_x + 2/3 * box_wd) * m, (start_y + 2/3 * box_hg) * m, 
						 (start_x + 5/3 * box_wd) * m, (start_y + 5/3 * box_hg) * m, m, m);
						 
	var slot = scr_inv_get_pos(obj_inventory_controller.consumable);
	
	if(slot[0] != -1){
		scr_draw_item(slot[0], slot[1], slot[2],
					  (start_x + 2/3 * box_wd) * m,(start_y + 2/3 * box_hg) * m, 
					  box_wd/32 * m, box_wd/32 * m, 1);
	}
	
	scr_9SB_ext(spr_HUD_9SB, start_x * m, start_y * m,
				(start_x + box_wd) * m, (start_y + box_hg) * m,
				m, m);
	
	var slot = scr_inv_get_pos(obj_inventory_controller.tool_slot);
	
	if(slot[0] != -1){
		scr_draw_item(slot[0], slot[1], slot[2],
					  start_x * m, start_y * m, 
					  box_wd/32 * m, box_wd/32 * m, 1);
	}
}