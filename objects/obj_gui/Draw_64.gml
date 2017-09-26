m = display_get_gui_width() / global.roomwd;

///Draw emblem
draw_sprite_ext(spr_emblem,global.char,0,0,m,m,0,c_white,1);

///Draw health
hp = global.p_hp;

xx = 80 * m;
yy = 34 * m;

for(i = 0; i < global.p_maxhp div 4; i++){
	if hp >= 4{
		draw_sprite_ext(spr_heart,4,xx + (i * 16) * m, yy, m, m, 0, c_white, 1);
		hp -= 4;
	}else if hp > 0{
		draw_sprite_ext(spr_heart, hp,xx + (i * 16) * m, yy, m, m, 0, c_white, 1);
		hp -= hp;
	}else {
		draw_sprite_ext(spr_heart, 0,xx + (i * 16) * m, yy, m, m, 0, c_white, 1);
	}
}

///Status effects
if global.st_poison {
	i++;
	
	draw_sprite_ext(spr_poisoned, 0, xx + (i * 16) * m, yy, m, m, 0, c_white, 1);
	
}

if global.st_stuck {
	i++;
	
	draw_sprite_ext(spr_stuck, 0, xx + (i * 16) * m, yy, m, m, 0, c_white, 1);
	
}


///Draw coins
draw_sprite_ext(spr_coin,0,yy + 4 * m,xx + 8 * m,m,m,0,c_white,1);
draw_set_font(font_chsl_tags);
draw_text_ext_transformed( yy + 20 * m, xx + 8 * m, string(global.coins), 2 * m, 16 * m, m, m, 0);

draw_text_ext_transformed( yy + 50 * m, xx + 8 * m, string(global.kld_enemies), 2 * m, 16 * m, m, m, 0);

///Character specific
switch global.char {
	case 0:
		if o_v == -1{
			o_v = global.p_will;
		}
		
		draw_sprite_ext(spr_sword_of_will,0,62 *m,55 *m,m,m,0,c_white,1);
		
		for(i = 0; i < o_v div 10; i += 1){
			draw_sprite_ext(spr_sow_pip,0,(93 + i * 7)*m,67*m,m,m,0,c_blue,1);
		}
		
		for(i = 0; i < global.p_will div 10; i += 1){
			draw_sprite_ext(spr_sow_pip,0,(93 + i * 7)*m,67*m,m,m,0,c_white,1);
		}
		
		if o_v > global.p_will{
			o_v -= 0.5;
		}
		
		if global.p_will > o_v {
			o_v = global.p_will;
		}
	break;
}