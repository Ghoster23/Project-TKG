if room == rm_level {
	if obj_ig_menu_controller.state == "status" {
		stats[0] = global.maxhp;
		stats[1] = global.atk;
		stats[2] = global.def;
		stats[3] = global.satk;
		stats[4] = global.sdef;
		stats[5] = global.spd;
	
		draw_sprite_ext(spr_inventory,  0, inv_x, inv_y, r, r, 0, c_white, 1);
		
		draw_sprite_ext(spr_quickslots, 0, inv_x, inv_y + inv_wd * r, r, r, 0, c_white, 1);
		
		draw_sprite_ext(spr_equipslots, 0, c + inv_x, inv_y, r, r, 0, c_white, 1);
	
		///Check all the the inventory
		for(i = 0; i < 9; i++){
			var type = inventory[# 0, i];
			
			var j = i mod 3;
			var k = i div 3;
			
			var xx = inv_x + 8  * r + (40 * j) * r;
			var yy = inv_y + 18 * r + (40 * k) * r;
			
			if(type != -1){
				var item   = inventory[# 1, i];
				var amount = inventory[# 2, i];
			
				scr_draw_item(type, item, amount, xx, yy, r, r, 1);
			}
			
			/*if(selected == i){
				var text = "type: " + string(type);
				draw_set_font(font_chsl_tags);
				draw_set_valign(false);
				draw_set_halign(false);
				var box_height = string_height(text);
				var box_length = string_width(text);
				draw_set_color(c_red);
				draw_rectangle(mx+10*m,my-6*m,mx+(box_length+14)*m,my+(box_height-4)*m,false);
				draw_set_color(c_white);
				scr_draw_text_outlined(mx+13*m,my-5*m,c_black,c_white,text);
				
			}*/			
		}
	}else if obj_ig_menu_controller.state == "closed" {
		
		
	}
}