if(instance_exists(global.body)){
	on = true;
	
	m = global.ratio;

	xx = 16 * m;
	yy = 16 * m;

	///Draw coins
	draw_sprite_ext(spr_HUD_coin, 0, xx + 160 * m, 8 * m,m,m,0,c_white,1);
	draw_set_font(font_chsl_tags);
	draw_text_ext_transformed( xx + 176 * m, 17 * m, global.coins, 2 * m, 16 * m, m, m, 0);
	draw_text_ext_transformed( xx + 176 * m, 33 * m, obj_room_controller.state, 2 * m, 16 * m, m, m, 0);

	///Character specific
	switch global.char {
		default:
		break;
		case 4: //Water flask
		break;
	}
	
	if(global.body.stat[stats.hp] <= 0){
		instance_destroy();
	}
}else {
	on = false;
}

if(not global.pause){
	counter++;
	counter = counter mod 360;
}