///@param xx
///@param yy
///@param wd
///@param hg
{
var xx = argument0;
var yy = argument1;

var inst = instance_create_layer(xx, yy, layer, obj_gen_room);

inst.generator = id;
inst.order = rm_gened;
inst.gen_col = gen_col;
inst.gen_row = gen_row;

if(rm_gened == 0){
	inst.start = true;
	inst.state = 1;
}

return inst;
}