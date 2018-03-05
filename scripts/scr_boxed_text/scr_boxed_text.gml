///@param xx
///@param yy
///@param box_wd
///@param box_hg
///@param box_color
///@param text_color
///@param scale
///@param font
///@param text
{
var xx         = argument0;
var yy         = argument1;
var box_wd     = argument2;
var box_hg     = argument3;
var box_color  = argument4;
var text_color = argument5;
var scale      = argument6;
var font       = argument7;
var text       = argument8;

draw_set_font(font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_set_color(box_color);
draw_rectangle(                 xx,                  yy,
               xx + box_wd * scale, yy + box_hg * scale, false);

draw_set_color(text_color);
draw_text_ext_transformed(xx, yy, text, 4 * scale, box_wd * scale, scale, scale, 0);

draw_set_color(c_white);
}