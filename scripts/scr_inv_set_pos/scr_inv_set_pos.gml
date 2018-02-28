///@param type
///@param item
///@param amount
///@param pos
{
var type   = argument0;
var item   = argument1;
var amount = argument2;
var pos    = argument3;

inventory[# 0, pos] = type;
inventory[# 1, pos] = item;
inventory[# 2, pos] = amount;
}