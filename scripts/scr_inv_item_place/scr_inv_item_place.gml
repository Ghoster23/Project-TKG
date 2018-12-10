///@description Place item from 'graber' in pos
///@param pos
{
var pos = argument0;

var type     = inventory[# 0, pos];
var sub_type = inventory[# 1, pos];
var amount   = inventory[# 2, pos];
var maximum  = scr_inv_item_stack_size(type) - 1;

var h_type   = inventory[# 0, holder];
var h_item   = inventory[# 1, holder];
var h_amount = inventory[# 2, holder];

if(pos < 9){
	//Place it
	if(type == -1){
		scr_inv_swap_pos(pos,holder);
	
		obj_cursor.cursor = true;
	
		capacity--;
	
	//Stack it
	}else if(type     == h_type &&  //The same type in holder and in inv
	         sub_type == h_item &&  //The same item in holder and in inv
			 maximum  >  amount &&  //The amount in inv is less than the max
			 not (type == item_type.potion      || 
			      type == item_type.chess_piece ||
				  type == item_type.tl_n_wep    ||
				  type == item_type.tl_n_wep    )){ //The type is not potion nor chess piece (don't stack)
	
		if(maximum >= amount + h_amount){ //Total amount is less or equal to maximum
			inventory[# 2, pos] += h_amount;
			scr_inv_set_pos(-1,-1,-1,holder)
			
			obj_cursor.cursor = true;
			
		}else {
			var excess = amount + h_amount - maximum;
			inventory[# 2, pos]    = maximum;
			inventory[# 2, holder] = excess;
			
			obj_cursor.cursor = false;
		}
	
	//Switch it
	}else {	
		scr_inv_swap_pos(pos,holder);
	
		obj_cursor.cursor = false;
	}
	
}else if((pos <  12         && h_type == item_type.equipable     )     ||
		 ((pos == tool_slot || pos == tool_slot + 1)                   &&
		 (h_type == item_type.tl_n_wep || h_type == item_type.tl_n_wep ))){
	//Place it
	if(type == -1){
		scr_inv_swap_pos(pos,holder);
	
		obj_cursor.cursor = true;
		
	//Switch it
	}else {
		scr_inv_swap_pos(pos,holder);
	
		obj_cursor.cursor = false;
	}
}
}