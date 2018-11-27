// Inherit the parent event
event_inherited();

var hg = height * cm;
var wd = width  * cm;

var rg = x + wd/2 - 12 * cm;
var tp = y - hg/2 + (bar_hg + 12) * cm;
var lf = x - wd/2 + 12 * cm;
var bt = y + hg/2 - 12 * cm;

var iwd = rg - lf;
var ihg = bt - tp;

#region Variables
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(hg != 100 * cm){
	if(tr_vars != -1 and tr_vals != -1){
		var cwd = iwd / 4;
		var chg = ihg / tr_cnt;
	
		draw_set_color(c_white);
	
		for(var i = 0; i < ds_list_size(tr_vars); i++){
			draw_text_ext_transformed(lf + cwd    , tp + (chg * (i + 0.5)) * cm,
										tr_vars[| i], 6, cwd * 2,
										cm, cm, 0);
		
			draw_text_ext_transformed(lf + cwd * 3, tp + (chg * (i + 0.5)) * cm,
										tr_vals[| i], 6 * cm, cwd * 2,
										cm, cm, 0);
		}
	
		draw_set_color(c_black);
	}
	
	alarm[1] = -1;
}else {
	draw_text_ext_transformed( x, y, "Instance not found.",
								line_hg * cm, iwd, cm, cm, 0);
	
	if(alarm[1] == -1){
		alarm[1] = 0.5 * room_speed;
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
#endregion