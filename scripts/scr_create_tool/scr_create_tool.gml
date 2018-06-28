///@description Create a weapon
///@param xx
///@param yy
///@param layer
///@param object_index
///@param owner
{
if(object_get_parent(argument3) == obj_tool_e_parent){
	var tl   = instance_create_layer(argument0,argument1,argument2,argument3);
	tl.owner = argument4;
	return tl;
}

return noone;
}