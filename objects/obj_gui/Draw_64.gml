display_set_gui_size(view_get_wport(0),view_get_hport(0));
draw_sprite(spr_gui,image_index,view_get_xport(view_current),view_get_yport(view_current));

draw_set_colour(c_white);
draw_set_font(font0);
draw_set_alpha(100);
draw_text(view_get_xport(view_current)+152,view_get_yport(view_current)+10,string_hash_to_newline(string(global.p_atk)));
draw_text(view_get_xport(view_current)+190,view_get_yport(view_current)+10,string_hash_to_newline(string(global.p_def)));


