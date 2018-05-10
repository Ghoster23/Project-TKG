///@description Creates and initializes a damage dealing object
///@param xx
///@param yy
///@param multiplier
///@param divider
///@param base_damage(OPTIONAL)
///@param knockback(OPTIONAL)
///@param object_index
///@param owner
{
var xx = argument[0];
var yy = argument[1];

if(argument_count == 6){
	var ml = argument[2];
	var dv = argument[3];
	var dd = argument[4];
	var ow = argument[5];
	
	var inst = instance_create_layer(xx,yy,"IF",dd);
	
	inst.damage *= ml;
	
}else if(argument_count == 8){
	var ml = argument[2];
	var dv = argument[3];
	var dm = argument[4];
	var kb = argument[5];
	var dd = argument[6];
	var ow = argument[7];
	
	var inst = instance_create_layer(xx,yy,"IF",dd);
	
	inst.damage    = dm * ml;
	inst.divi      = dv;
	inst.kb_amount = kb;
}

inst.owner = ow;

return inst;
}