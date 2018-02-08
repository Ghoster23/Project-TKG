scr_get_input();

if(not global.pause && obj_ig_menu_controller.state == "closed"){
	if(consumable_key){
		var type = global.consumable[0];
		
		if      (type == 0){ //One-time Consumables
			
		}else if(type == 1){ //Potions
			scr_player_potion_effect(global.consumable[1],global.consumable[2]);
		}else if(type == 2){ //Chess Pieces
			
		}else if(type == 3){ //Constellations
			
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