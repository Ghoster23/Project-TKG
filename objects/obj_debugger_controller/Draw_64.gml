if(state > 0){
	draw_set_color(c_red);
	draw_circle(0, 0, 8, false);
	draw_set_color(c_white);
	
	switch state {
		case 3:
			if(screen_lines){
				draw_set_color(c_lime);
				draw_line(hc,0,hc,vc*2);
				draw_line(0,vc,hc*2,vc);
				draw_set_color(c_white);
			}
		break;
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_color(c_purple);
	draw_text_transformed(8 * global.ratio, vc, debug_text, global.ratio / 2, global.ratio / 2, 0);
	draw_set_color(c_white);

	debug_text = "";
}