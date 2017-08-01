m = display_get_gui_width() / global.roomwd;

///Draw emblem
draw_sprite_ext(spr_emblem,global.char,0,0,m,m,0,c_white,1);

///Draw health
hp = global.p_hp;

xx = 80 * m;
yy = 34 * m;

for(var i = 0; i < global.p_maxhp div 4; i++){
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

///Draw coins
draw_sprite_ext(spr_coin,0,yy - 4 * m,xx,m,m,0,c_white,1);
draw_set_font(font0);
draw_text_ext_transformed( yy + 20 * m, xx, string(global.coins), 2 * m, 16 * m, m, m, 0);

///Character specific
switch global.char {
	case 0:
		draw_sprite_ext(spr_sword_of_will,0,62 *m,55 *m,m,m,0,c_white,1);
		draw_rectangle(92 * m, 67 * m, (92 + (68 * global.p_will/100)) * m, 74 * m, false);
	break;
}