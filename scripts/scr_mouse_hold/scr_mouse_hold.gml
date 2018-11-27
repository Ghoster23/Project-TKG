{
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

if(point_in_rectangle(obj_cursor.x,obj_cursor.y,x1,y1,x2,y2)){
	if(mouse_check_button(mb_left)){
		return true;
	}
}

return false;
}