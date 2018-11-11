///@description Creates and initializes a damage dealing object
///@param xx
///@param yy
///@param object_index
///@param owner
///@param ohko
///@param speed
///@param direction
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
var sp = argument[5];
var dr = argument[6];

var inst = instance_create_layer(xx,yy,"IF",dd);
inst.owner = ow;

with inst {
	abs_cos = abs(cos(dr));
	
	with(shadow){
		phy_rotation = radtodeg(other.shadow_rot);
		visible = true;
	}
	
	physics_apply_impulse(phy_position_x,phy_position_y,
						  sp * cos(dr), sp * sin(dr));
	
	phy_rotation       = radtodeg(dr);
	phy_fixed_rotation = false;
	visible            = true;
	
	spd = phy_speed;
}

if(ko){
	inst.ohko = true;
	
}else {
	if(argument_count == 9){
		var ml = argument[7];
		var dv = argument[8];
	
		inst.damage *= ml;
		inst.divi    = dv;
	
	}else if(argument_count == 11){
		var ml = argument[7];
		var dv = argument[8];
		var dm = argument[9];
		var kb = argument[10];
	
		var inst = instance_create_layer(xx,yy,"IF",dd);
	
		inst.damage    = dm * ml;
		inst.divi      = dv;
		inst.kb_amount = kb;
	}
}

return inst;
}