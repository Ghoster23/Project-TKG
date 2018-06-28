///@description Returns the item in a position of the inventory
///@param pos
{
var pos = argument0;

return [obj_inventory_controller.inventory[# 0, pos],
		obj_inventory_controller.inventory[# 1, pos],
		obj_inventory_controller.inventory[# 2, pos]]
}