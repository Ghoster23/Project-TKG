///@description Creates and initializes a damage dealing object
///@param xx
///@param yy
///@param object_index
///@param owner
///@param ohko
///@param multiplier(OPTIONAL)
///@param divider(OPTIONAL)
///@param base_damage(OPTIONAL)
///@param knockback(OPTIONAL)

{
var xx = argument[0];
var yy = argument[1];
var dd = argument[2];
var ow = argument[3];
var ko = argument[4];

var inst = instance_create_layer(xx,yy,"IF",dd);
inst.owner = ow;

if(ko){
	inst.ohko = true;
	
}else {
	if(argument_count == 7){
		var ml = argument[5];
		var dv = argument[6];
	
		inst.damage *= ml;
		inst.divi    = dv;
	
	}else if(argument_count == 9){
		var ml = argument[5];
		var dv = argument[6];
		var dm = argument[7];
		var kb = argument[8];
	
		inst.damage    = dm * ml;
		inst.divi      = dv;
		inst.kb_amount = kb;
	}
}

return inst;
}