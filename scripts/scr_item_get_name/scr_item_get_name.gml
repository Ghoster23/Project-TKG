///@param type
///@param item
///@param amount 
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

if(type < item_type.count){
	var ind = global.item_type_ind[type];

	if(type < item_type.count - 1){
		var cnt = global.item_type_ind[type+1] - ind;
	}else {
		var cnt = ds_grid_height(global.item_type_ind) - ind;
	}
	
	if(item < cnt){
		var name = global.ds_grid_items[# 0, ind + item];
		
		if(type == item_type.chess_piece){
			if(amount == 1){
				name = "Black " + name;
			}else {
				name = "White " + name;
			}
		}
		
		return name;
	}
}

return "???";
}