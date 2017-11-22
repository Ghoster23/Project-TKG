{
var ar1 = argument[0];
var ar2 = argument[1];
var nar;

var ar1_l = array_length_1d(ar1);
var ar2_l = array_length_1d(ar2);

for(var i = 0; i < ar1_l; i++){
	nar[i] = ar1[i];
}

for(var j = 0; j < ar2_l;j++){
	nar[i+j] = ar2[j];
}

return nar;
}