if room == rm_level {
	if obj_ig_menu_controller.state == "status"{
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
		
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
		
		var inv_x = c / 2 - (inv_wd / 2) * m;
		var inv_y = c_    - (inv_hg / 2) * m;
	
		draw_sprite_ext(spr_inventory, 0, inv_x, inv_y, m, m, 0, c_white, 1);
	
		///Check all the the inventory
		for(i = 0; i < 12; i++){
			var type = inventory[# 0, i];
			
			var j = i mod 3;
			var k = i div 3;
			
			var xx = inv_x + 11 * m + (77 * j) * m;
			var yy = inv_y + 12 * m + (77 * k) * m;
			
			var xx_ = inv_x + 11 * m + (77 * (j) + 64) * m;
			var yy_ = inv_y + 12 * m + (77 * (k) + 64) * m;
		
			///If there's an item there draw it
			if(type != -1){
				var item   = inventory[# 1, i];
				var amount = inventory[# 2, i];
				
				if(xx < mx && mx < xx_ && yy < my && my < yy_){
					draw_sprite_ext(spr_circle,0,xx,yy,m,m,0,c_white,1);
					
					if(mouse_click && alarm[0] == -1){
						 scr_inv_item_grab(i);
						alarm[0] = 5;
					}
				}
				
				scr_draw_item( type, item, amount, xx, yy, m * 2, m * 2, 1);
				
			}else if(type == -1 && holder[0] != -1 && xx < mx && mx < xx_ && yy < my && my < yy_ 
			         && mouse_click && alarm[0] == -1){
				scr_inv_item_place(i);
				alarm[0] = 5;
				
			}
		}
	}else if obj_ig_menu_controller.state == "closed" {
				
	}
}