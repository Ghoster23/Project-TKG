if(not drawing or closed){ exit; }

#region Window
var x1 = x-(width /2)*cm;
var y1 = y-(height/2)*cm;
var x2 = x+(width /2)*cm;
var y2 = y+(height/2)*cm;

if(style == -1){
	draw_set_color(c_white);
	draw_rectangle(x1,y1,x2,y2,false);
	draw_set_color(c_black);
	draw_rectangle(x1,y1,x2,y2,true);
	draw_line(x1,y1+36*cm,x2,y1+36*cm);
}else {
	script_execute(style,st_params);
}

#region Title
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(x1 + 12 * cm, y1 + 18 * cm, title, cm, cm, 0);
draw_set_valign(fa_top);
#endregion
#endregion

#region Close
if(closeable and not count){
	x1  = x2 - 26 * cm;
	y1 += 10 * cm;
	x2  = x1 + 16 * cm;
	y2  = y1 + 16 * cm;

	if(scr_window_button(x1, y1, x2, y2, "x", 
					bt_type, bt_tparam,
					bt_hover, bt_hparam,
					cm, cm)){
		scr_window_close();
	}
}
#endregion