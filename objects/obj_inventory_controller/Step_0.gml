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
		
		inventory[# 0, consumable] = -1;
		inventory[# 1, consumable] = -1;
		inventory[# 2, consumable] = -1;
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
	if(up_key || a_up){
		if(selected div 3 > 0){
			selected -= 3;
		}else {
			selected = 9 + selected;
		}
	}
	
	if(right_key || a_right){
		if(selected mod 3 < 2){
			selected++;
		}else {
			selected = selected - 2;
		}
	}
	
	if(down_key || a_down){
		if(selected div 3 < 3){
			selected += 3;
		}else {
			selected = selected mod 3;
		}
	}
	
	if(left_key || a_left){
		if(selected mod 3 > 0){
			selected--;
		}else {
			selected = selected + 2;
		}
	}
}