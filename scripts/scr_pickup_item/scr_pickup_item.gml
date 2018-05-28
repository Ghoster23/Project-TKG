///@description Pick up item
///@param type   - Type of item
///@param item   - Item
///@param amount - Amount
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

/*show_debug_message("Type: " + string(type));
show_debug_message("Item: " + string(item));
show_debug_message("Amount: " + string(amount));*/

if(type < 9 and amount > 0){
	with(obj_inventory_controller){
		for(var i = 0; i < 9; i++){
			var temp_type   = inventory[# 0, i];
			var temp_item   = inventory[# 1, i];
			var temp_amount = inventory[# 2, i];
			var maximum     = scr_inv_item_stack_size(type);
			
			//Stack it
			if(temp_type   == type    &&
			   temp_item   == item    &&
			   temp_amount  < maximum &&
			   type != item_type.potion      && 
			   type != item_type.chess_piece){
				   
				temp_amount = amount + temp_amount;
			
				if(temp_amount <= maximum){
					amount = -1;
					obj_inventory_controller.inventory[# 2, i] = temp_amount;
					return amount;
					
				}else {
					obj_inventory_controller.inventory[# 2, i] = maximum;
					amount = temp_amount - maximum;
					
				}
			
			}else if(type == item_type.potion     || 
					 type == item_type.chess_piece){
				break;
			}
		}
	
		if(amount > 0 and obj_inventory_controller.capacity > 0){
			
			for(var i = 0; i < 9; i++){
				var temp_type = inventory[# 0, i];
		
				if(temp_type == -1){
					scr_inv_set_pos(type, item, amount, i);
		
					obj_inventory_controller.capacity--;
		
					amount = -1;
					break;
				}
			}
		}
	}
	
}else if(type == item_type.heart){
	switch item {
		case heart.heart:
			if(stat[stats.hp] < stat[stats.mhp]){
				stat[stats.hp] += amount;
					
				if(stat[stats.hp] > stat[stats.mhp]){
					amount         = stat[stats.hp] - stat[stats.mhp];
					stat[stats.hp] = stat[stats.mhp];
				}else {
					amount = -1;
				}
			}
		break;
		case heart.armor:
			stat[stats.arm] += amount;
			amount = -1;
		break;
		case heart.container:
			if(stat[stats.mhp] < 40){
				stat[stats.mhp] += amount;
				amount = -1;
			}
		break;
	}
}else if(type == item_type.currency){
	global.coins       += amount;
	global.total_coins += amount;
	amount = -1;
}

return amount;
}