{
var xx = argument0;
var yy = argument1;

var time  = argument2;
var owner = argument3;

var inst   = instance_create_layer(xx,yy,"PS",obj_circular_chargeup);
inst.time  = time;
inst.owner = owner;

return inst;
}