draw_set_color(c_red);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(5,5,"Top Left");

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(display_get_gui_width()-5,
display_get_gui_height()-5,"Bottom Right");

draw_set_color(c_white);