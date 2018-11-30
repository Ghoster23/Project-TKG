if(room == rm_level || room == rm_lvl_editor_test){
	if obj_ig_menu_controller.state == "inv" {
		
		if(selected == -1){
			text = "Drop";
			
		}else if(selected == 16){
			text = "Consume";
			
		}else if(inventory[# 0, selected] != -1){
			text = scr_item_get_name(inventory[# 0, selected],
			                         inventory[# 1, selected],
									 inventory[# 2, selected]);
			text += " x" + string(inventory[# 2, selected]);
		}else {
			text = "";
		}
	
		///Inventory
		scr_inventory_window(inv_x, inv_y, m);
		
		///Quick Slots
		scr_quick_slots(qa_x, qa_y, m);
		
		///Equipment
		scr_stats_equips_window(equip_x, equip_y, m);
		
		
		if(text != ""){
			scr_boxed_text( mx + 8 * m, my + 8 * m, c_white, c_white, m, font_chsl_tags, text, spr_HUD_9SB);
		}
		
	}
}