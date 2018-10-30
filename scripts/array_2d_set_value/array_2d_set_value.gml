///@param array
///@param i
///@param j
///@param val
{
var a = argument0;
var i = argument1;
var j = argument2;
var v = argument3;
var line = a[i];
line[j] = v;
a[i] = line;
return a;
}