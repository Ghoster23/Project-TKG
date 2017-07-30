///@description Move in a direction
///@param Direction
///@param Speed Multiplier
d = argument0;
s = argument1;

//Get hspd and vspd
hspd = lengthdir_x(e_spd * s,d);
vspd = lengthdir_y(e_spd * s,d);
   
//Move
phy_position_x += hspd;
phy_position_y += vspd;