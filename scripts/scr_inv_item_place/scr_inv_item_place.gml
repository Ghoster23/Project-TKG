///@description Place item from 'graber' in pos
///@param pos
{
var pos = argument0;

var type     = ds_grid_get(inventory,0,pos);
var sub_type = ds_grid_get(inventory,1,pos);
var maximum  = scr_inv_item_stack_size(type);

//Place it
if(type == -1){
	inventory[# 0, pos] = holder[0];
	inventory[# 1, pos] = holder[1];
	inventory[# 2, pos] = holder[2];
	
	holder = [-1,-1,-1];
	
	obj_cursor.cursor = true;
	
	obj_cursor.holder = holder;
	
//Stack it
}else if(type     == holder[0] && 
         sub_type == holder[1] && 
		 maximum  >  holder[2]){
	inventory[# 0, pos]  = holder[0];
	inventory[# 1, pos]  = holder[1];
	inventory[# 2, pos] += holder[2];
	
	var excess = inventory[# 2, pos] - maximum;
	
	if(excess <= 0){
		holder = [-1,-1,-1];
		
		obj_cursor.cursor = true;
		
		obj_cursor.holder = holder;
	}else {
		holder[2] = excess;
		
		obj_cursor.cursor = false;
		
		obj_cursor.holder = holder;
	}
	
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