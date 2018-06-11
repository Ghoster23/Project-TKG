///@description Check if button clicked
///@param xx
///@param yy
///@param wd
///@param hg
{
var xx = argument0;
var yy = argument1;
var wd = argument2;
var hg = argument3;

if(point_in_rectangle(obj_cursor.x,obj_cursor.y,xx,yy,xx + wd,yy + hg) &&
   global.key_active[key_id.m_click]){
	show_debug_message("Clicked");
	return true;
}

return false;
}