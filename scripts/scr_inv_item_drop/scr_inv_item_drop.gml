///@description Remove item from holder and create it in room
{
var type   = inventory[# 0, holder];
var item   = inventory[# 1, holder];
var amount = inventory[# 2, holder];

scr_inv_set_pos(-1,-1,-1,holder);
obj_cursor.cursor = true;

var dir = point_direction(global.body.x,global.body.y,mouse_x,mouse_y);

scr_spawn_item(type, item, amount, global.body.x + lengthdir_x(32,dir), global.body.y + lengthdir_y(32,dir));
}