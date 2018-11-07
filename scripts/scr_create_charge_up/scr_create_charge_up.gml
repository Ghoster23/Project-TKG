///@param x
///@param y
///@param time
///@param owner
{
var xx = argument0;
var yy = argument1;

var time  = argument2;
var owner = argument3;

var inst = instance_create_layer(xx,yy,"PS",obj_circular_chargeup);

if(instance_exists(inst)){
	inst.time  = time * room_speed;
	inst.owner = owner;

	return inst;
}else {
	return noone;	
}
}