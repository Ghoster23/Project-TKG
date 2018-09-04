{
var key    = scr_keyname(global.key_binds[key_id.interact]);
var key_wd = string_width(key);
var x_sc   = 1;

if(key_wd > 12){
	x_sc = key_wd / 12;
}

draw_sprite_ext(spr_interact,0,x+intr_x_offs,y+intr_y_offs+sin(intr_key_bob)*3,x_sc,1,0,c_white,1);
draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);
draw_text_color(x+intr_x_offs-1,
				y+intr_y_offs+sin(intr_key_bob)*3 - 1,
				key,c_black,c_black,c_black,c_black,1);

scr_draw_outline(prev_draw_script);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}