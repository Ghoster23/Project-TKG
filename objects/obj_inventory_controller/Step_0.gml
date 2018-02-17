scr_get_input();

if(not global.pause && obj_ig_menu_controller.state == "closed"){
	if(consumable_key){
		var type   = inventory[# consumable, 0];
		var item   = inventory[# consumable, 1];
		var amount = inventory[# consumable, 2];
		
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