///@param pos1
///@param pos2
{
var pos1 = argument0;
var pos2 = argument1;

var temp = [inventory[# 0, pos1], inventory[# 1, pos1], inventory[# 2, pos1]];

scr_inv_set_pos(inventory[# 0, pos2], inventory[# 1, pos2], inventory[# 2, pos2], pos1);
scr_inv_set_pos(             temp[0],              temp[1],              temp[2], pos2);
}