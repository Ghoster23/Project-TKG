{
///@description Move object in a circle
///@param X
///@param Y
///@param Radius
///@param Tracker
///@param Speed

var cx = argument0;
var cy = argument1;

var radius = argument2;

var trk = argument3;

var spd = argument4;

x = cx + lengthdir_x(radius, trk);
y = cy + lengthdir_y(radius, trk);

trk += spd;

return trk;

}