m = display_get_gui_width() / global.roomwd;

///Draw emblem
draw_sprite_ext(spr_emblem,global.char,0,0,m,m,0,c_white,1);

///Draw health
hp = global.p_hp;

xx = 80 * m;
yy = 34 * m;

for(i = 0; i < global.p_maxhp div 4; i++){
	if(i < 5){
		o = sprite_get_height(spr_heart) + 4;
		
		if hp >= 4{
			draw_sprite_ext(spr_heart,  4,xx + (i * 18.5) * m, yy - o * m, m, m, 0, c_white, 1);
			hp -= 4;
		}else if hp > 0{
			draw_sprite_ext(spr_heart, hp,xx + (i * 18.5) * m, yy - o * m, m, m, 0, c_white, 1);
			hp -= hp;
		}else {
			draw_sprite_ext(spr_heart,  0,xx + (i * 18.5) * m, yy - o * m, m, m, 0, c_white, 1);
		}
	}else {
		var j = i - 5;
		
		if hp >= 4{
			draw_sprite_ext(spr_heart,  4,xx + (j * 18.5) * m, yy, m, m, 0, c_white, 1);
			hp -= 4;
		}else if hp > 0{
			draw_sprite_ext(spr_heart, hp,xx + (j * 18.5) * m, yy, m, m, 0, c_white, 1);
			hp -= hp;
		}else {
			draw_sprite_ext(spr_heart,  0,xx + (j * 18.5) * m, yy, m, m, 0, c_white, 1);
		}
	}
}

///Status effects
j = 5;

for(i = 0; i < 8; i++){
	var t      = global.status[i,0];
	var prev_t = global.status[i,1];
	var spr    = global.status[i,2];
	
	if(t){
		draw_sprite_ext(spr, 13 - 13 * (t / prev_t), xx + ((j) * 18.5) * m, yy - (o + 2) * m, m, m, 0, c_white, 1);
		j++;
	}
}


///Draw coins
draw_sprite_ext(spr_coin,0,yy + 4 * m,xx + 8 * m,m,m,0,c_white,1);
draw_set_font(font_chsl_tags);
draw_text_ext_transformed( yy + 20 * m, xx + 8 * m, string(global.coins), 2 * m, 16 * m, m, m, 0);
draw_text_ext_transformed( yy + 63 * m, xx + 8 * m, string(global.current_row * 8 + global.current_column), 2 * m, 16 * m, m, m, 0);

///Draw Carried Potion
if global.potion[1] != c_white {
	draw_sprite_ext(spr_potion_flask,global.potion[0],yy + 5*m,xx + 40 * m,m,m,0,c_white,1);
	draw_sprite_ext(spr_potion_fluid,global.potion[0],yy + 5*m,xx + 40 * m,m,m,0,global.potion[1],1);
	
}else {
	draw_sprite_ext(spr_potion_flask,0,yy + 5*m,xx + 40 * m,m,m,0,c_white,1);
}

///Draw Potion Name
if n_potion {
	var name = 0;
	
	switch global.potion[1] {
		case c_red:
			name = "Elixir of Life";
		break;
		case c_yellow:
			name = "Midas' Favourite";
		break;
		case c_teal:
			name = "Crystal Clear";
		break;
		case c_fuchsia:
			name = "Nightshade Juice";
		break;
		case c_purple:
			name = "Immunaization of the Void";
		break;
		case c_navy:
			name = "Compass Concoction";
		break;
		case c_orange:
			name = "Mango Brew";
		break;
	}
	
	if name != 0 {
		draw_set_alpha(alarm[0] / (3 * room_speed));
		draw_text_transformed(display_get_gui_width()/2,256,name,m*1.5,m*1.5,0);
		draw_set_alpha(1);
	}
	
	if alarm[0] == -1 {
		alarm[0] = 3 * room_speed;
	}
	
}

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