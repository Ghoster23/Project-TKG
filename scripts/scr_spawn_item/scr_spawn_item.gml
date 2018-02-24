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
}
}