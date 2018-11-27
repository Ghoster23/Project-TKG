///@description Spawns an item
///@param type   - Type of item
///@param item   - Item
///@param amount - Amount
///@param x      - x
///@param y      - y
///@param jump   - Jump or not
///@param dir    - true = random || false = opposite player
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

var xx = argument3;
var yy = argument4;

var jp = argument5;
var dr = argument6;

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
	spawn.amount = irandom((amount + 1) * -1) + 1;
	
}else {
	instance_destroy(spawn);
	return noone;
}

with spawn {
	jump = jp;
	dir  = dr;
	
	switch type {
		default:
		break;
		case item_type.heart:
			if(item > 0){
				image_speed = 0.4;
			}
		break;
		case item_type.currency:
			image_speed = 0.4;
		break;
	}
	
	visible = true;
}

return spawn;
}