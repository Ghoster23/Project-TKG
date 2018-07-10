///@description Returns the orientation of the entity based on the direction given
{
var dir = argument0;

//Figure out what direction you are facing
return ((dir + 45) div 90) mod 4;
}