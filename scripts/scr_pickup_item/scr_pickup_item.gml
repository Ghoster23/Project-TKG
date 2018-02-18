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

if(obj_inventory_controller.capacity > 0){
	var inv = obj_inventory_controller.inventory;

	var maximum = scr_inv_item_stack_size(type);

	for(var i = 0; i < 9; i++){
		var temp_type = inv[# 0, i];
	
		if(temp_type == type && type != item_type.potion){
			var temp_item   = inv[# 1, i];
			var temp_amount = inv[# 2, i];
		
			if(temp_item == item && temp_amount < maximum){
				temp_amount = amount + temp_amount;
			
				if(temp_amount <= maximum){
					amount      = -1;
					inv[# 2, i] = temp_amount;
					break;
					
				}else if(temp_amount > maximum){
					inv[# 2, i] += maximum;
					amount       = temp_amount - maximum;
					
				}
			}
		}
	}
	
	if(amount != -1){
		for(var i = 0; i < 9; i++){
			var temp_type = inv[# i, 0];
		
			if(temp_type == -1){
				inv[# 0, i] = type;
				inv[# 1, i] = item;
				inv[# 2, i] = amount;
		
				obj_inventory_controller.capacity--;
		
				amount = -1;
				break;
			}
		}
	}

	obj_inventory_controller.inventory = inv;

	if(amount == -1){
		instance_destroy();
	}
}

return amount;
}