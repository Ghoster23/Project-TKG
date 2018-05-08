if((room == rm_level || room == rm_lvl_editor_test || room == rm_CH_boss) && !global.dead){
m = global.ratio;

xx = 64 * m;
yy = 64 * m;

///Draw health bar
scr_health_bar();

///Draw status bar
scr_status_bar();

///Draw tool slot
scr_tool_slot();

///Draw Consumable slot
scr_consumable_slot();

///Draw coins
draw_sprite_ext(spr_coin, 0, xx + 160 * m, 8 * m,m,m,0,c_white,1);
draw_set_font(font_chsl_tags);
draw_text_ext_transformed( xx + 176 * m, 17 * m, global.coins, 2 * m, 16 * m, m, m, 0);
draw_text_ext_transformed( yy + 63 * m, xx + 8 * m, fps_real, 2 * m, 16 * m, m, m, 0);

///Character specific
switch global.char {
	default:
	break;
	case 4: //Water flask
	break;
}
}