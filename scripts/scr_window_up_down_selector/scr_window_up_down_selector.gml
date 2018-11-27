///@param x1
///@param y1
///@param x2
///@param y2
///@param value
///@param min
///@param max
///@param xscale_optional
///@param yscale_optional
{
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var val = argument4;

var _min = argument5;
var _max = argument6;

var xs = 1;
if(argument_count > 7){ xs = argument7; }

var ys = 1;
if(argument_count > 8){ ys = argument8; }

var wd = x2 - x1;
var hg = y2 - y1;

if(wd > hg){
	var type = 0;
}else {
	var type = 1;
}

switch type {
	case 0:
		if(scr_window_button(x1,y1,x1+wd/3,y2,"<",xs,ys)){
			val--;
		}
		
		if(scr_window_button(x2-wd/3,y1,x2,y2,">",xs,ys)){
			val++;
		}
	break;
	
	case 1:
		if(scr_window_button(x1,y2-hg/3,x2,y2,"v",xs,ys)){
			val--;
		}
		
		if(scr_window_button(x1,y1,x2,y1+hg/3,"^",xs,ys)){
			val++;
		}
	break;
}

if(val < _min){
	val = _max;
}

if(val > _max){
	val = _min;
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text_ext_transformed((x1 + (x2-x1)/2) * xs, (y1 + (y2-y1)/2) * ys, string(val),
						  0, wd/3 * xs, xs, ys, 0);
draw_set_color(c_white);

return val;
}