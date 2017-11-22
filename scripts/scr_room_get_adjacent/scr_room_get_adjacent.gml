{
var rm = argument[0];

var doors = global.ds_roomgrid[# 3, rm];

var up    = -1;
var left  = -1;
var down  = -1;
var right = -1;

if(doors[0]){
	up = rm - 8; 
}

if(doors[1]){
	left = rm - 1; 
}

if(doors[2]){
	down = rm + 8; 
}

if(doors[3]){
	right = rm + 1; 
}

return [up,left,down,right];

}