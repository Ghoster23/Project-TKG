///@description Move in a direction
///@param Direction
///@param Speed Multiplier
{
var d = argument0;
var s = argument1;

//Get hspd and vspd
var hspd = lengthdir_x(e_spd * s,d);
var vspd = lengthdir_y(e_spd * s,d);
   
//Move
phy_position_x += hspd;
phy_position_y += vspd;
}