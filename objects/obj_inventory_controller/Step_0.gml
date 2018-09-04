mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

if(obj_ig_menu_controller.state == "closed"){
	if(global.key_active[key_id.consume] && alarm[1] == -1 && inventory[# 0, consumable] != -1){
		scr_inv_consume(consumable);
		
		alarm[1] = 0.3 * room_speed;
	}
	
	
	if(global.key_active[key_id.utilize] && alarm[1] == -1){
		var type   = inventory[# 0, tool_slot];
		var item   = inventory[# 1, tool_slot];
		var amount = inventory[# 2, tool_slot]; 
		
		switch(type){
			case item_type.tl_n_wep:
				if(!equip){
					equip = scr_tw_equip(item,amount);
				}else {
					equip = scr_tw_unequip();
				}
			break;
			case item_type.active:
				if(amount == scr_active_get_data(item)){
					equip = scr_use_active(item);
					inventory[# 2, tool_slot] = 1;
				}
			break;
		}
		
		tool_key = false;
		alarm[1] = 0.3 * room_speed;
	}
	
	inv_x   = -inv_wd * r;

	///Quick Access
	qa_x    = inv_x + (inv_wd / 2 - qa_wd / 2) * r;

	///Stats & Equipment
	equip_x = c * 2 - inv_x - inv_wd * r;
	
}else if(obj_ig_menu_controller.state == "inv"){	
	gui_WD = display_get_gui_width();
	gui_HG = display_get_gui_height();
	
	if(inv_x == 0){
		//UP
		if(global.key_active[key_id.up] || global.key_active[key_id.m_up]){
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
		if(global.key_active[key_id.right] || global.key_active[key_id.m_right]){
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
		if(global.key_active[key_id.down] || global.key_active[key_id.m_down]){
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
		if(global.key_active[key_id.left] || global.key_active[key_id.m_left]){
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
			}else if(qa_x + 13 * r < mx && mx < qa_x + 44 * r &&
			         qa_y + 23 * r < my && my < qa_y + 55 * r){
				selected = consumable;
	
			//Tool Slot
			}else if(qa_x + 49 * r < mx && mx < qa_x + 80 * r &&
			         qa_y + 23 * r < my && my < qa_y + 55 * r){
				selected = tool_slot;
	
			//Equipment
			}else if(gui_WD - inv_x - inv_wd * r < mx && 
			         mx < gui_WD - inv_x &&
					 inv_y < my && my < inv_y + inv_hg * r){
					 
				for(i = 0; i < 3; i++){
					var type = inventory[# 0, 8 + i];
			
					var xx = gui_WD - inv_x - inv_wd * r + 8 * r;
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
					 c_ - 32 * m < my && my < c_ + 32 * m){
				selected = 16;
			
			//Drop
			}else {
				selected = -1;
		
			}
		
			prev_mx = mx;
			prev_my = my;
		}
	
		if((global.key_active[key_id.m_click] || global.key_active[key_id.m_confirm]) && 
			not click){
			click = true;
		
			var _type = inventory[# 0, holder];
			
			//Place, swap or drop items
			if(_type != -1){
				//Fuck up prevention
				if(is_undefined(_type)){
					scr_inv_set_pos(-1,-1,-1,holder);
				}
				
				//Drop item
				if(selected == -1){
					scr_inv_item_drop();
				
				//Consume item by clicking on the player
				}else if(selected == 16 && _type <= item_type.constellation){
					scr_inv_consume(holder);
			
					obj_cursor.cursor = true;
				
				//Place or swap item
				}else {
					scr_inv_item_place(selected);
				
				}
			
			//Grab item from inventory
			}else {
				switch selected {
					case -1:
					case 16:
					break;
					case tool_slot:
						if(!equip){
							if(inventory[# 0,tool_slot] != item_type.active){
								scr_inv_item_grab(selected);
							}else {
								scr_inv_item_grab(selected);
								inventory[# 2,holder] = 1;
							}
						}
					break;
					default:
						scr_inv_item_grab(selected);
					break;
					
				}			
			}
			
			alarm[0] = 0.3 * room_speed;
		}
	
		//Equipment effects
		for(var i = 0; i < 3; i++){
			var e_id = inventory[# 1, 9 + i];
		
			if(eq_active[i] != e_id){
				var prev_id = eq_active[i];
			
				if(prev_id != -1){
					scr_equip_effect_off(prev_id);
				}
			
				scr_equip_effect_on(e_id);
				eq_active[i] = e_id;
			}
		}
	}else {
		inv_x   = scr_approach(inv_x,0,8*r);

		///Quick Access
		qa_x    = inv_x + (inv_wd / 2 - qa_wd / 2) * r;

		///Stats & Equipment
		equip_x = c * 2 - inv_x - inv_wd * r;
	}
}