{
draw_set_color(c_white);
draw_rectangle( 4 * m, yy + 72 * m, 36 * m, yy + 104 * m, true);

var pos = obj_inventory_controller.consumable;

scr_draw_item(obj_inventory_controller.inventory[# 0, pos],
              obj_inventory_controller.inventory[# 1, pos],
			  obj_inventory_controller.inventory[# 2, pos],
			  4 * m, yy + 72 * m, m, m, 1);
}