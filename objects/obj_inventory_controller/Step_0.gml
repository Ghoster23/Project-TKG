scr_get_input();

if(obj_ig_menu_controller.state == "closed"){
	if(consumable_key){
		scr_inv_consume(inventory[# 1, consumable], consumable);
		
	}
	
	/*
	if(tool_key){
		var type = global.tool[0];
		
		if      (type == 4){
			
		}else if(type == 5){
			
		}
	}
	*/
	
	for(var i = 0; i < 3; i++){
		var e_id = inventory[# 1, 9 + i];
		
		if(e_id != -1 && eq_active[i] != e_id){
			var prev_id = eq_active[i];
			
			if(prev_id != -1){
				scr_equip_effect_off(prev_id);
			}
			
			scr_equip_effect_on(e_id);
			eq_active[i] = e_id;
		}
	}
	
}else if(obj_ig_menu_controller.state == "status"){
	mx = device_mouse_x_to_gui(0);
	my = device_mouse_y_to_gui(0);
	
	//UP
	if(up_key || a_up){
		if(selected < 9){
			if(selected div 3 > 0){
				selected -= 3;
			}else {
				selected = 12 + selected mod 2;
			}
		}else if(9 < selected && selected < 12){
			selected -= 1;
		}else if(selected == 9){
			selected = 11;
		}
	}
	
	//RIGHT
	if(right_key || a_right){
		if(selected < 9){
			if(selected mod 3 < 2){
				selected++;
			}else {
				selected = 9 + selected div 3;
			}
		}else if(8 < selected && selected < 12){
			selected = (selected - 9) * 3;
		}else if(selected == 12){
			selected = 13;
		}else {
			selected = 12;
		}
	}
	
	//DOWN
	if(down_key || a_down){
		if(selected < 9){
			if(selected div 3 < 2){
				selected += 3;
			}else {
				selected = 12 + selected mod 2;
			}
		}else if(8 < selected && selected < 12){
			selected += 1;
		}else {
			selected = selected mod 2;
		}
	}
	
	//LEFT
	if(left_key || a_left){
		if(selected < 9){
			if(selected mod 3 > 0){
				selected--;
			}else {
				selected = 9 + selected div 3;
			}
		}else if(8 < selected && selected < 12){
			selected = (selected mod 3) * 3 + 2;
		}else if(selected == 12){
			selected = 13;
		}else {
			selected = 12;
		}
	}
	
	if(mx != prev_mx && my != prev_my){
		//Inventory
		if(inv_x < mx && mx < inv_x + inv_wd * r &&
		   inv_y < my && my < inv_y + inv_hg * r){
			for(i = 0; i < 9; i++){			
				var j = i mod 3;
				var k = i div 3;
			
				var xx = inv_x + 8  * r + (40 * j) * r;
				var yy = inv_y + 18 * r + (40 * k) * r;
			
				var xx_ = xx + 32 * r;
				var yy_ = yy + 32 * r;
			
				//MOUSE
				if(xx < mx && mx < xx_ && yy < my && my < yy_){
					selected = i;
				
				}
			}
	
		//Consumable Slot
		}else if(inv_x + 23 * r < mx && mx < inv_x + 55 * r &&
		         inv_y + (inv_hg + 6) * r < my && my < inv_y + (inv_hg + 38) * r){
			selected = consumable;
	
		//Tool Slot
		}else if(inv_x + 80 * r < mx && mx < inv_x + 112 * r &&
		         inv_y + (inv_hg + 6) * r < my && my < inv_y + (inv_hg + 38) * r){
			selected = tool_slot;
	
		//Equipment
		}else if(c + inv_x < mx && mx < c + inv_x + 48 * r &&
				 inv_y < my && my < inv_y + inv_hg * r){
			for(i = 0; i < 3; i++){
				var type = inventory[# 0, 8 + i];
			
				var xx = c + inv_x + 8 * r;
				var yy = inv_y    + 18 * r + (40 * i) * r;
			
				var xx_ = xx + 32 * r;
				var yy_ = yy + 32 * r;
			
				//MOUSE
				if(xx < mx && mx < xx_ && yy < my && my < yy_){
					selected = 9 + i;
				
				}
			}
	
		//Body
		}else if(c - 32 * m < mx && mx < c + 32 * m &&
				 c_ - 112 * m < my && my < c_ + 48 * m){
			selected = 16;
			
		//Drop
		}else {
			selected = -1;
		
		}
		
		prev_mx = mx;
		prev_my = my;
	}
	
	if((mouse_click || enter_key) && 
		alarm[0] == -1){
		
		if(selected == -1 && inventory[# 0, holder] != -1 && inventory[# 0, holder] != undefined){
			scr_inv_item_drop();
			
		}else if(selected == 16 && inventory[# 0, holder] <= item_type.constellation){
			scr_inv_consume(inventory[# 1, holder], pos);
			
		}else if(selected != -1){
			switch(inventory[# 0, holder]){
				case -1:
					scr_inv_item_grab(selected);
						
				break;
				default:						
					scr_inv_item_place(selected);
						
				break;
			}
			
			alarm[0] = 0.3 * room_speed;
		}
	}
}