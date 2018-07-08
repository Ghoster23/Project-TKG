{
var inst = argument0;

var xx = inst.x+16;
var yy = inst.y+16;

var len = 300;

var a1  = point_direction(x,y,xx,yy);
var a2  = a1;

var ln1 = 0;
var ln2 = 0;

var xr  = x + lengthdir_x(len,a1);
var yr  = y + lengthdir_y(len,a1);

var points = [[0,0],[0,0],[0,0],[0,0]];

//Get first point
while(collision_line(x,y,xr,yr,inst,true,true)){
	
	show_debug_message("1");
	
	a1 += 0.1;
	
	xr = x + lengthdir_x(len,a1);
	yr = y + lengthdir_y(len,a1);
}

points[0,0] = xr;
points[0,1] = yr;

xr = x + lengthdir_x(len,a2);
yr = y + lengthdir_y(len,a2);

//Get second point
while(collision_line(x,y,xr,yr,inst,true,true)){
	
	show_debug_message("2");
	
	a2 -= 0.1;
	
	xr = x + lengthdir_x(len,a2);
	yr = y + lengthdir_y(len,a2);
}

points[1,0] = xr;
points[1,1] = yr;

xr = x;
yr = y;

while(!collision_circle(xr,yr,0.1,inst,true,true)){
	
	show_debug_message("3");
	
	ln1 += 0.1;
	
	xr = x + lengthdir_x(ln1,a1-0.1);
	yr = y + lengthdir_y(ln1,a1-0.1);
}

points[2,0] = xr;
points[2,1] = yr;

xr = x;
yr = y;

while(!collision_circle(xr,yr,0.1,inst,true,true)){
	
	show_debug_message("4");
	
	ln2 += 0.1;
	
	xr = x + lengthdir_x(ln2,a2+0.1);
	yr = y + lengthdir_y(ln2,a2+0.1);
}

points[3,0] = xr;
points[3,1] = yr;

return points;
}