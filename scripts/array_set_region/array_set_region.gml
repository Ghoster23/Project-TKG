{
var a = argument0;

var xi = argument1;
var yi = argument2;

var xf = argument3;
var yf = argument4;

var val = argument5;

for(var i = yi; i < yf; i++){
	for(var j = xi; j < xf; j++){
		a[i,j] = val;
	}
}

argument0 = a;

}