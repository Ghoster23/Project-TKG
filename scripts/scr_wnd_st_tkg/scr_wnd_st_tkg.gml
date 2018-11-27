///@param [background_color, accent_color]
{
var x1 = x-(width /2)*cm;
var y1 = y-(height/2)*cm;
var x2 = x+(width /2)*cm;
var y2 = y+(height/2)*cm;

#region Window
scr_9SB_ext(spr_HUD_9SB, x1, y1, x2, y2, cm, cm);
#endregion

draw_set_color(c_white);
draw_line(x1+12*cm,y1+bar_hg*cm,x2-12*cm,y1+bar_hg*cm);
}