{
var val     = argument0;
var min_val = argument1;
var max_val = argument2;

if val > max_val{
	return max_val;
}
else if val < min_val{
	return min_val;
}
else return val;
}