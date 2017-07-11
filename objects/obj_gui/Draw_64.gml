draw_sprite_ext(spr_gui,image_index,0,0,3,3,0,c_white,1);

draw_set_colour(c_white);
draw_set_font(font0);

draw_set_alpha(1);
draw_text(view_get_xport(view_current)+152,view_get_yport(view_current)+10,string_hash_to_newline(string(global.p_atk)));
draw_text(view_get_xport(view_current)+190,view_get_yport(view_current)+10,string_hash_to_newline(string(global.p_def)));