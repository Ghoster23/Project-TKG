///@description Place item from 'graber' in pos
///@param pos
{
var pos = argument0;

var type     = inventory[# 0, pos];
var sub_type = inventory[# 1, pos];
var maximum  = scr_inv_item_stack_size(type) - 1;

if(pos < 9){
	//Place it
	if(type == -1){
		scr_inv_swap_pos(pos,12);
	
		obj_cursor.cursor = true;
	
		capacity--;
	
	//Stack it
	}else if(type     == inventory[# 0,  12] &&  //The same type in holder and in inv
	         sub_type == inventory[# 1,  12] &&  //The same item in holder and in inv
			 maximum  >  inventory[# 2, pos] &&  //The amount in inv is less than the max
			 not (type == 2 || type == 3)){      //The type is not potion nor chess piece (don't stack)
	
		if(maximum >= inventory[# 2, pos] + inventory[# 2, 12]){ //Total amount is less or equal to maximum
			inventory[# 2, pos] += inventory[# 2, 12];
			ds_grid_set_region(inventory,0,12,2,12,-1);
			
			obj_cursor.cursor = true;
			
		}else {
			var excess = inventory[# 2, pos] + holder[2] - maximum;
			inventory[# 2, pos] = maximum;
			inventory[# 2,  12] = excess;
			
			obj_cursor.cursor = false;
		}
	
	//Switch it
	}else {	
		scr_inv_swap_pos(pos,12);
	
		obj_cursor.cursor = false;
	}
	
}else if(inventory[# 0, 12] == 7){
	//Place it
	if(type == -1){
		scr_inv_swap_pos(pos,12);
	
		obj_cursor.cursor = true;
		
	//Switch it
	}else {
		scr_inv_swap_pos(pos,12);
	
		obj_cursor.cursor = false;
	}
}
}