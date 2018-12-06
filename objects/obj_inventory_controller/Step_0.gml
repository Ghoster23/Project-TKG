m = global.gui_ratio;

gui_WD = global.gui_WD;
gui_HG = global.gui_HG;

hc = gui_WD / 2;
vc = gui_HG / 2;

inv_y   = 52 * m;
equip_y = inv_y + 132 * m;

if(obj_ig_menu_controller.state == "closed"){
	#region Consumable Slot
	if(global.key_active[key_id.consume] && alarm[1] == -1 && inventory[# 0, consumable] != -1){
		scr_inv_consume(consumable);
		
		alarm[1] = 0.3 * room_speed;
	}
	#endregion
	
	#region Tool Slot
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
		
		alarm[1] = 0.3 * room_speed;
	}
	#endregion
	
	inv_x   = (-inv_wd + 38) * m; //Reset inv_x
	equip_x = inv_x;
	
}else if(obj_ig_menu_controller.state == "inv"){
	//If inventory animation is done
	if(inv_x == 8 * m){
		#region Arrows
		//UP
		if(global.key_active[key_id.up] || global.key_active[key_id.m_up]){
			if(selected < 12){
				if(selected div 3 > 0){
					selected -= 3;
				}else {
					selected = 9 + selected mod 3;
				}
			}else if(selected == 13){
				selected = 12;
			}else if(selected == 12){
				selected = 13;
			}
		}
	
		//RIGHT
		if(global.key_active[key_id.right] || global.key_active[key_id.m_right]){
			if(selected < 12){
				if(selected mod 3 < 2){
					selected++;
				}else {
					if(selected == 5){
						selected = 12;
					}else if(selected == 8){
						selected = 13;
					}else {
						selected = selected - 2;
					}
				}
			}else if(11 < selected && selected < 14){
				selected = (selected - 11) * 3;
			}
		}
	
		//DOWN
		if(global.key_active[key_id.down] || global.key_active[key_id.m_down]){
			if(selected < 12){
				if(selected div 3 < 3){
					selected += 3;
				}else {
					selected = selected mod 3;
				}
			}else if(selected == 12){
				selected += 1;
			}else if(selected == 13){
				selected -= 1;
			}
		}
	
		//LEFT
		if(global.key_active[key_id.left] || global.key_active[key_id.m_left]){
			if(selected < 12){
				if(selected mod 3 > 0){
					selected--;
				}else {
					if(selected == 3){
						selected = 12;
					}else if(selected == 6){
						selected = 13;
					}else {
						selected = selected + 2;
					}
				}
			}else if(selected == 12){
				selected = 5;
			}else if(selected == 13){
				selected = 8;
			}
		}
		#endregion
	
		if((global.key_active[key_id.m_click] || global.key_active[key_id.m_confirm]) && 
			not click){
			click = true;
		
			var _type = inventory[# 0, holder];
			
			//Place, swap or drop items
			if(_type != -1){
				//F*** up prevention
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
		inv_x   = scr_approach( inv_x, 8 * m, 8 * m);

		///Stats & Equipment
		equip_x = inv_x;
	}
}