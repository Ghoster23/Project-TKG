draw_set_font(font_chsl_tags);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
scr_draw_text_outlined(x,y-z,c_black,c_white,string(dmg));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);