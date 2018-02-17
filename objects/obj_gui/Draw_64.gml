if(!obj_pglobs.dead && (room == rm_level || room == rm_lvl_editor_test || room == rm_CH_boss)){
m = global.MonitorW / global.roomwd;

xx = 80 * m;
yy = 34 * m;

///Draw emblem
draw_sprite_ext(spr_emblem,global.char,0,0,m,m,0,c_white,1);

///Draw health
scr_health_bar();

///Status effects
scr_status_bar();

///Draw coins
draw_sprite_ext(spr_coin,0,yy + 4 * m,xx + 8 * m,m,m,0,c_white,1);
draw_set_font(font_chsl_tags);
draw_text_ext_transformed( yy + 20 * m, xx + 8 * m, string(global.coins), 2 * m, 16 * m, m, m, 0);

///Draw Quick-Access Slots


///Character specific
switch global.char {
	case 0:
		if o_v == -1{
			o_v = global.p_will;
		}
		
		var pips = global.p_maxwill div 10;
		
		draw_sprite_ext(spr_sword_of_will,0,62 *m,55 *m,m,m,0,c_white,1);
		
		for(i = 0; i < pips; i += 1){
			draw_sprite_ext(spr_sow_pip,0,(93 + i * 13)*m,67*m,m,m,0,c_dkgray,1);
		}
		
		for(i = 0; i < o_v div 10; i += 1){
			draw_sprite_ext(spr_sow_pip,0,(93 + i * 13)*m,67*m,m,m,0,c_blue,1);
		}
		
		for(i = 0; i < global.p_will div 10; i += 1){
			draw_sprite_ext(spr_sow_pip,0,(93 + i * 13)*m,67*m,m,m,0,c_white,1);
		}
		
		if o_v > global.p_will{
			o_v -= 0.5;
		}
		
		if global.p_will > o_v {
			o_v = global.p_will;
		}
	break;
}
}