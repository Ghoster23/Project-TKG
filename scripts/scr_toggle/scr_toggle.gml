///@param variable
///@param option_1
///@param option_2
{
var val = argument0;
var op1 = argument1;
var op2 = argument2;

if(val != op2){
	val = op2;
}else if(val != op1){
	val = op1;
}

return val;
}