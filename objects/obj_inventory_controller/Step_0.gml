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
}