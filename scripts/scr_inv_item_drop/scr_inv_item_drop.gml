///@description Remove item from holder and create it in room
{
var type   = holder[0];
var item   = holder[1];
var amount = holder[2];

holder = [-1,-1,-1];
obj_cursor.holder = [-1,-1,-1];
obj_cursor.cursor = true;

scr_spawn_item(type,item,amount,global.body.phy_position_x, global.body.phy_position_y + 32);
}