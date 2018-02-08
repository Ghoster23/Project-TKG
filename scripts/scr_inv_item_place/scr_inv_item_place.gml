///@description Place item from 'graber' in pos
///@param pos
{
var pos = argument;

var type     = ds_grid_get(inventory,0,pos);
var sub_type = ds_grid_get(inventory,1,pos);

//Place it
if(type == -1){
	inventory[# 0, pos] = holder[0];
	inventory[# 1, pos] = holder[1];
	inventory[# 2, pos] = holder[2];
	
//Stack it
}else if(type == holder[0] && sub_type == holder[1] && stack_size[type] > holder[2]){
	inventory[# 0, pos]  = holder[0];
	inventory[# 1, pos]  = holder[1];
	inventory[# 2, pos] += holder[2];
	
	var excess = inventory[# 2, pos] - stack_size[type];
	
	if(excess <= 0){
		holder = [-1,-1,-1];
	}else {
		holder[2] = excess;
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
}
}