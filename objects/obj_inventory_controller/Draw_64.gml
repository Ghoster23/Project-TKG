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
	
		draw_sprite_ext( spr_minimap, 0, (c - width) * m, (c_ - height) * m, m, m, 0, c_white, 1);
	
		///Check all the the inventory
		for(i = 0; i < 14; i++){
			var type   = inventory[# i, 0];
			
			var j = i mod 4;
			var k = i div 4;
			
			///Draw the rectangle
			draw_rectangle((c - width + 4 + i * 32) * m,
						   (c - height + 4 + j * 32) * m,
						   (c - width + 4 + (i + 1) * 32) * m,
						   (c - height + 4 + (j + 1) * 32) * m,
						   true);
		
			///If there's an item there draw it
			if(type != -1){
				var item   = inventory[# i, 1];
				var amount = inventory[# i, 2];
				
				scr_draw_item(type,item,amount,(c - width + 4 + i * 32) * m,
				(c - height + 4 + j * 32) * m,m,m,1);
			}
		}
	}else if obj_ig_menu_controller.state == "closed" {
				
	}
}