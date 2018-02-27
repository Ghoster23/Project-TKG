///@description Remove item from holder and create it in room
{
var type   = holder[0];
var item   = holder[1];
var amount = holder[2];

holder = [-1,-1,-1];
obj_cursor.holder = [-1,-1,-1];
obj_cursor.cursor = true;

var dir = point_direction(global.body.x,global.body.y,mouse_x,mouse_y);

scr_spawn_item(type,item,amount,global.body.x + lengthdir_x(32,dir), global.body.y + lengthdir_y(32,dir));
}