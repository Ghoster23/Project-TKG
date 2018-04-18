if room == rm_level {
	if obj_ig_menu_controller.state == "status" and visible{
		
		if(selected == -1){
			text = "Drop";
			
		}else if(selected == 16){
			text = "Consume";
			
		}else if(inventory[# 0, selected] != -1){
			text = scr_item_get_name(inventory[# 0, selected],
			                         inventory[# 1, selected],
									 inventory[# 2, selected]);
		}else {
			text = "";
		}
	
		///Inventory
		scr_inventory_window(inv_x, inv_y, r);
		
		///Quick Slots
		scr_quick_slots(qa_x, qa_y, r);
		
		///Equipment
		scr_stats_equips_window(equip_x, equip_y, r);
		
		
		if(text != ""){
			scr_boxed_text(mx,my,string_width(text),string_height(text),
			               c_aqua, c_white, m, font_chsl_tags, text);
		}
		
	}else if obj_ig_menu_controller.state == "closed" {
		
		
	}
}