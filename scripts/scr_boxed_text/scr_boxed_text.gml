///@param xx
///@param yy
///@param box_color
///@param text_color
///@param scale
///@param font
///@param text
///@param sprite
{
var xx         = argument0;
var yy         = argument1;
var box_color  = argument2;
var text_color = argument3;
var scale      = argument4;
var font       = argument5;
var text       = argument6;
var spr        = argument7;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var wd = (string_width(text)  + 16) * scale;
var hg = (string_height(text) + 16) * scale;

if(wd < hg){
	wd = hg;
}

draw_set_color(box_color);

if(spr == -1){
	draw_rectangle( xx, yy, xx + wd, yy + hg, false);
}else {
	scr_9SB_ext(spr, xx, yy, xx + wd, yy + hg, scale, scale);
}

draw_set_font(font);
draw_set_color(text_color);
draw_text_ext_transformed(xx + wd * 0.5, yy + hg * 0.5,
						  text, 4 * scale, wd, scale, scale, 0);

draw_set_color(c_white);
}