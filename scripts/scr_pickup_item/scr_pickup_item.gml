///@description Pick up item
///@param type   - Type of item
///@param item   - Item
///@param amount - Amount
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

if(obj_inventory_controller.capacity > 0){
	var inv = obj_inventory_controller.inventory;

	var max = scr_inv_item_stack_size(type);

	for(var i = 0; i < 9; i++){
		var temp_type = inv[# i, 0];
	
		if(temp_type == type && type != item_type.potion){
			var temp_item   = inv[# i, 1];
			var temp_amount = inv[# i, 2];
		
			if(temp_item == item && temp_amount < max){
				var excess = max - amount - temp_amount;
			
				if(excess < 0){
					amount      = excess * -1;
					inv[# i, 2] = max;
				}else if(excess > 0){
					inv[# i, 2] += amount;
					amount = 0;
					break;
				}else {
					inv[# i, 2] = max;
					amount = 0;
					break;
				}
			}
		}
	
		if(temp_type == -1){
			inv[# i, 0] = type;
			inv[# i, 1] = item;
			inv[# i, 2] = amount;
		
			obj_inventory_controller.capacity--;
		
			amount = 0;
			break;
		}
	}

	obj_inventory_controller.inventory = inv;

	if(amount == 0){
		instance_destroy();
	}
}

return amount;
}