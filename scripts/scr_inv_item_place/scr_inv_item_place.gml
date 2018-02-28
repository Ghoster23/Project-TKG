///@description Place item from 'graber' in pos
///@param pos
{
var pos = argument0;

var type     = inventory[# 0, pos];
var sub_type = inventory[# 1, pos];
var maximum  = scr_inv_item_stack_size(type) - 1;

var holder   = obj_cursor.holder;

if(pos < 9){
	//Place it
	if(type == -1){
		inventory[# 0, pos] = holder[0];
		inventory[# 1, pos] = holder[1];
		inventory[# 2, pos] = holder[2];
	
		obj_cursor.cursor = true;
		obj_cursor.holder = [-1,-1,-1];
	
		capacity--;
	
	//Stack it
	}else if(type     == holder[0] && 
	         sub_type == holder[1] && 
			 maximum  >  holder[2] &&
			 maximum  >  inventory[# 2, pos] &&
			 not (type == 2 || type == 3)){
	
		if(maximum >= inventory[# 2, pos] + holder[2]){
			inventory[# 2, pos] += holder[2];
			holder = [-1,-1,-1];
			obj_cursor.cursor = true;
		}else {
			var excess = inventory[# 2, pos] + holder[2] - maximum;
			inventory[# 2, pos] = maximum;
			holder[2] = excess;
			obj_cursor.cursor = false;
		}
	
		obj_cursor.holder = holder;
	
	//Switch it
	}else {
		var temp = holder;
	
		holder[0] = inventory[# 0, pos];
		holder[1] = inventory[# 1, pos];
		holder[2] = inventory[# 2, pos];
	
		inventory[# 0, pos] = temp[0];
		inventory[# 1, pos] = temp[1];
		inventory[# 2, pos] = temp[2];
	
		obj_cursor.cursor = false;
	
		obj_cursor.holder = holder;
	}
}else if(holder[0] == 7){
	//Place it
	if(type == -1){
		inventory[# 0, pos] = holder[0];
		inventory[# 1, pos] = holder[1];
		inventory[# 2, pos] = holder[2];
	
		obj_cursor.cursor = true;
		obj_cursor.holder = [-1,-1,-1];
		
	//Switch it
	}else {
		var temp = holder;
	
		holder[0] = inventory[# 0, pos];
		holder[1] = inventory[# 1, pos];
		holder[2] = inventory[# 2, pos];
	
		inventory[# 0, pos] = temp[0];
		inventory[# 1, pos] = temp[1];
		inventory[# 2, pos] = temp[2];
	
		obj_cursor.cursor = false;
	
		obj_cursor.holder = holder;
	}
}
}