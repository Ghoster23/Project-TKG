///@description Pick up item
///@param type   - Type of item
///@param item   - Item
///@param amount - Amount
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

show_debug_message("Type: " + string(type));
show_debug_message("Item: " + string(item));
show_debug_message("Amount: " + string(amount));

with(obj_inventory_controller){
	if(capacity > 0){

		var maximum = scr_inv_item_stack_size(type);

		for(var i = 0; i < 9; i++){
			var temp_type = inventory[# 0, i];
	
			//Stack it
			if(temp_type == type && type != item_type.potion && type != item_type.chess_piece){
				var temp_item   = inventory[# 1, i];
				var temp_amount = inventory[# 2, i];
		
				if(temp_item == item && temp_amount < maximum){  //Item is the same and amount is less than maximum
					temp_amount = amount + temp_amount;
			
					if(temp_amount <= maximum){
						amount            = -1;
						inventory[# 2, i] = temp_amount;
						break;
					
					}else {
						inventory[# 2, i] = maximum;
						amount       = temp_amount - maximum;
					
					}
				}
			}else if(type == item_type.potion){
				break;
			}
		}
	
		if(amount != -1){
			for(var i = 0; i < 9; i++){
				var temp_type = inv[# 0, i];
		
				if(temp_type == -1){
					inventory[# 0, i] = type;
					inventory[# 1, i] = item;
					inventory[# 2, i] = amount;
		
					capacity--;
		
					amount = -1;
					break;
				}
			}
		}

		if(amount == -1){
			instance_destroy();
		}
	}
}
return amount;
}