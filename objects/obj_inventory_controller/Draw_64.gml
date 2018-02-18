if room == rm_level {
	if obj_ig_menu_controller.state == "status"{
		stats[0] = global.maxhp;
		stats[1] = global.atk;
		stats[2] = global.def;
		stats[3] = global.satk;
		stats[4] = global.p_sdef;
		stats[5] = global.spd;
		
		var i = 0;
	
		var m = display_get_gui_width() / global.roomwd;
		
		var c  = display_get_gui_width()  / 2;
		var c_ = display_get_gui_height() / 2;
		
		draw_line( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), c, c_);
	
		draw_sprite_ext(spr_inventory, 0, c - (inv_wd / 2) * m, c_ - (inv_hg / 2) * m, m, m, 0, c_white, 1);
	
		///Check all the the inventory
		for(i = 0; i < 9; i++){
			var type   = inventory[# 0, i];
			
			var j = i mod 3;
			var k = i div 3;
			
			draw_set_color(c_red);
			
			///Draw the rectangle
			draw_rectangle(c  - (inv_wd / 2 - 8) * m + 8 * m + 64 * j * m,
						   c_ - (inv_hg / 2 - 8) * m + 8 * m + 64 * k * m,
						   c  - (inv_wd / 2 - 8) * m + 64 * (j + 1) * m,
						   c_ - (inv_hg / 2 - 8) * m + 64 * (k + 1) * m,
						   true);
		
			///If there's an item there draw it
			if(type != -1){
				var item   = inventory[# 1, i];
				var amount = inventory[# 2, i];
				
				scr_draw_item( type, item, amount,
				c  - (inv_wd / 2 - 8) * m + 8 * m + (64 * j) * m,
				c_ - (inv_hg / 2 - 8) * m + 8 * m + (64 * k) * m,
				m * 2, m * 2, 1);
			}
		}
	}else if obj_ig_menu_controller.state == "closed" {
				
	}
}