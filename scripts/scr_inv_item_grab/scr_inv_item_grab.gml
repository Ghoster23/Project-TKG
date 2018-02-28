///@description Place item in the 'graber' from pos
///@param pos
{
var pos = argument0;

//Place it in holder
if(inventory[# 0, pos] != -1){
	//Send item to holder
	scr_inv_swap_pos(pos,12);
	
	//Tell cursor to display grabbed item
	obj_cursor.cursor = false;

	//Remove from inventory
	capacity++;
}
}