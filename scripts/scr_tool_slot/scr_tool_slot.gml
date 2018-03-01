{
draw_set_color(c_white);
draw_rectangle( 4 * m, yy + 4 * m, 68 * m, yy + 68 * m, true);

var pos = obj_inventory_controller.tool_slot;

scr_draw_item(obj_inventory_controller.inventory[# 0, pos],
              obj_inventory_controller.inventory[# 1, pos],
			  obj_inventory_controller.inventory[# 2, pos],
			  xx, yy, m, m, 1);
}