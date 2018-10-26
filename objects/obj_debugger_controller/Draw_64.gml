if(state > 0){
	draw_set_color(c_white);
	
	for(var i = 1; i < 6; i++){
		scr_boxed_text((160 + i * 32) * global.cam_ratio, 0,
						c_white, c_white, global.cam_ratio, font_chsl_tags,
						ops[i], spr_HUD_9SB);
	}
	
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
	draw_text_transformed(8 * global.cam_ratio, vc, debug_text, global.cam_ratio / 2, global.cam_ratio / 2, 0);
	draw_set_color(c_white);

	debug_text = "";
}