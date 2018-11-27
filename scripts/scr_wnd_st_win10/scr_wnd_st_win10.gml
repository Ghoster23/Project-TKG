///@param [background_color, accent_color]
{
var params = argument0;
var bcolor = params[0];
var acolor = params[1];

#region Window
draw_set_color(bcolor);
draw_rectangle(x - width / 2, y - height / 2, x + width / 2, y + height / 2, false);

draw_set_color(acolor);
draw_rectangle(x - width / 2, y - height / 2, x + width / 2, y + height / 2, true);
#endregion

#region Link
var len = array_length_1d(sub_windows);

for(var i = 0; i < len; i++){
	var wnd = sub_windows[i];
	draw_line_color(x, y, wnd.x, wnd.y, acolor, acolor);
}
#endregion
}