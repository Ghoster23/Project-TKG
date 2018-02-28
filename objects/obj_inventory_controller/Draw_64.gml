if room == rm_level {
	if obj_ig_menu_controller.state == "status" {
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
		
		stats[0] = global.maxhp;
		stats[1] = global.atk;
		stats[2] = global.def;
		stats[3] = global.satk;
		stats[4] = global.sdef;
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
			var type   = inventory[# 0, i];
			
			var j = i mod 3;
			var k = i div 3;
			
			var xx = inv_x + 11 * m + (77 * j) * m;
			var yy = inv_y + 12 * m + (77 * k) * m;
			
			var xx_ = inv_x + 11 * m + (77 * (j) + 64) * m;
			var yy_ = inv_y + 12 * m + (77 * (k) + 64) * m;
			
			if(type != -1){
				var item   = inventory[# 1, i];
				var amount = inventory[# 2, i];
			
				scr_draw_item(type,item,amount,xx,yy,m*2,m*2,1);
			}
			
			if(xx < mx && mx < xx_ && yy < my && my < yy_){
				selected = i;
			}
			
			if(selected == i){
				var text = "type: " + string(type);
				var text_ = "h type: " + string(holder[0]);
				draw_set_font(font_chsl_tags);
				draw_set_valign(false);
				draw_set_halign(false);
				var box_height = string_height(text);
				var box_length = string_width(text);
				draw_set_color(c_red);
				draw_rectangle(mx+10*m,my-6*m,mx+(box_length+14)*m,my+(box_height-4)*m,false);
				draw_set_color(c_white);
				scr_draw_text_outlined(mx+13*m,my-5*m,c_black,c_white,text);
				scr_draw_text_outlined(mx+13*m,my-(5-box_height)*m,c_black,c_white,text_);
				
			}
			
			if(selected == i &&
			  ((mouse_click && xx < mx && mx < xx_ && yy < my && my < yy_) ||
			    enter_key) && alarm[0] == -1){
					
				switch(inventory[# 0, 12]){
					case -1:
						scr_inv_item_grab(i);
					break;
					default:						
						scr_inv_item_place(i);
					break;
				}
				
				alarm[0] = 0.5 * room_speed;
			}
		}
		
		if(holder[0] != -1 && mouse_click &&
		(mx < inv_x || mx > inv_x + inv_wd * m ||
		my < inv_y || my > inv_y + inv_hg * m)){
			scr_inv_item_drop();
		}
	}else if obj_ig_menu_controller.state == "closed" {
				
	}
}