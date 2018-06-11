///@description Move in a direction
///@param Direction
///@param Speed Multiplier
{
if(not stuck){
	var d = argument0;
	var s = argument1;

	//Get hspd and vspd
	var hspd = lengthdir_x(stat[stats.spd] * (1 + modf[stats.spd]) * s,d);
	var vspd = lengthdir_y(stat[stats.spd] * (1 + modf[stats.spd]) * s,d);
   
	//Move
	phy_position_x += hspd;
	phy_position_y += vspd;
	
	var inst = instance_place(phy_position_x,phy_position_y,obj_breakable_parent);
	return inst;
}

return noone;
}