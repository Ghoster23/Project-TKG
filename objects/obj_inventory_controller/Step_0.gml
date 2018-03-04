scr_get_input();

if(obj_ig_menu_controller.state == "closed"){
	if(consumable_key){
		var type   = inventory[# 0, consumable];
		var item   = inventory[# 1, consumable];
		var amount = inventory[# 2, consumable];
		
		if      (type == item_type.unique_consumable){
			scr_player_unique_consume_effect(item);
			
		}else if(type == item_type.food){
			scr_player_food_effect(item);
			
		}else if(type == item_type.potion){
			scr_player_potion_effect(item,amount);
			
		}else if(type == item_type.chess_piece){
			scr_player_chessP_effect(item);
			
		}else if(type == item_type.constellation){
			scr_player_constellation_effect(item);
			
		}
		
		scr_inv_set_pos(-1,-1,-1,consumable);
		capacity++;
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
		var e_id = global.equiped[i];
		
		if(e_id != -1){
			scr_player_equip_effect_on(e_id);
		}
	}
}else if(obj_ig_menu_controller.state == "status"){
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	
	//UP
	if(up_key || a_up){
		if(selected < 9){
			if(selected div 3 > 0){
				selected -= 3;
			}else {
				selected = 12 + selected mod 2;
			}
		}else if(8 < selected && selected < 12){
			selected -= 1;
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
		}
	}
	
	//DOWN
	if(down_key || a_down){
		if(selected < 9){
			if(selected div 3 < 3){
				selected += 3;
			}else {
				selected = 12 + selected mod 2;
			}
		}else if(8 < selected && selected < 12){
			selected = ;
		}
	}
	
	//LEFT
	if(left_key || a_left){
		if(selected mod 3 > 0){
			selected--;
		}else {
			selected = selected + 2;
		}
	}
	
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
	
	//Tool Slot
	}else if(inv_x + 23 * r < mx && mx < inv_x + 55 * r &&
	         inv_y + (inv_hg + 14) * r < my && my < inv_y + (inv_hg + 46) * r){
		selected = tool_slot;
	
	//Consumable Slot
	}else if(inv_x + 80 * r < mx && mx < inv_x + 112 * r &&
	         inv_y + (inv_hg + 14) * r < my && my < inv_y + (inv_hg + 46) * r){
		selected = consumable;
	
	//Equipment
	}else if(c + inv_x < mx && mx <c + inv_x + 48 * r &&
			 inv_y < my && my < inv_y + inv_hg * r){
		for(i = 0; i < 3; i++){
			var type = inventory[# 0, 8 + i];
			
			var xx = inv_x + 8 * r;
			var yy = inv_y + 18 * r + (40 * i) * r;
			
			var xx_ = xx + 32 * r;
			var yy_ = yy + 32 * r;
			
			//MOUSE
			if(xx < mx && mx < xx_ && yy < my && my < yy_){
				selected = 8 + i;
				
			}
		}
	
	//Body
	}/*else if(){
	
	//Drop
	}else {
		scr_inv_item_drop();
		
	}*/
	
	if((mouse_click || enter_key) && 
		alarm[0] == -1){
					
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