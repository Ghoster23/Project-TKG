if(state > 0){
	draw_set_color(c_red);
	draw_circle(0, 0, 16 * global.ratio, false);
	draw_set_color(c_white);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_color(c_purple);
	draw_text_transformed(8 * global.ratio, vc, debug_text, global.ratio / 2, global.ratio / 2, 0);
	draw_set_color(c_white);

	debug_text = "";
}