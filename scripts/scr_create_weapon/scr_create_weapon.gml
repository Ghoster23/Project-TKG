///@description Create a weapon
///@param xx
///@param yy
///@param layer
///@param object_index
///@param owner
{
if(object_get_parent(argument3) == obj_weapon_parent || object_get_parent(argument3) == obj_weapon_e_parent){
	var wep   = instance_create_layer(argument0,argument1,argument2,argument3);
	wep.owner = argument4;
	return wep;
}

return noone;
}