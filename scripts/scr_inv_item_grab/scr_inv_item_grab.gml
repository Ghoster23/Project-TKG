///@description Place item in the 'graber' from pos
///@param pos
{
var pos = argument;

var type     = holder[0];
var sub_type = holder[1];

var type_     = inventory[# 0, pos];
var sub_type_ = inventory[# 1, pos];

//Place it
if(type == -1){
	holder[0] = inventory[# 0, pos];
	holder[1] = inventory[# 1, pos];
	holder[2] = inventory[# 2, pos];
	
//Stack it
}else if(type == type_ && sub_type == sub_type_ && stack_size[type_] > inventory[# 2, pos]){
	holder[0]  = inventory[# 0, pos];
	holder[1]  = inventory[# 1, pos];
	holder[2] += inventory[# 2, pos];
	
	var excess = holder[2] - stack_size[type];
	
	if(excess <= 0){
		ds_grid_set_region(inventory,0,pos,2,pos,-1);
	}else {
		inventory[# 2, pos] = excess;
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