///@description Place item in the 'graber' from pos
///@param pos
{
var pos = argument0;

//Place it in holder
obj_cursor.holder = [inventory[# 0, pos],inventory[# 1, pos],inventory[# 2, pos]];
obj_cursor.cursor = false;

//Remove from inventory
ds_grid_set_region(inventory,0,pos,2,pos,-1);
capacity++;	
}