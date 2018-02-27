///@description Spawns an item
///@param type   - Type of item
///@param item   - Item
///@param amount - Amount
///@param xx     - x
///@param yy     - y
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

var xx = argument3;
var yy = argument4;

var spawn = instance_create_layer(xx,yy,"Instances",obj_item);

spawn.type = type;

if(item >= 0){
	spawn.item = item;
	
}else {
	spawn.item = irandom(item * -1);
	
}

if(amount > 0){
	spawn.amount = amount;
	
}else if(amount < 0){
	spawn.amount = irandom(amount * -1);
	
}else {
	instance_destroy(spawn);
	return;
	
}

var dir = point_direction(global.body.phy_position_x,global.body.phy_position_y,mouse_x,mouse_y);

with spawn {
	id.dir = dir;
	physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(6,id.dir),lengthdir_y(6,id.dir));
	s = phy_speed;
}
}