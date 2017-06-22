display_set_gui_size(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
draw_sprite(spr_gui,image_index,__view_get( e__VW.XView, view_current ),__view_get( e__VW.YView, view_current ));

draw_set_colour(c_white);
draw_set_font(font0);
draw_set_alpha(100);
draw_text(__view_get( e__VW.XView, view_current )+152,__view_get( e__VW.YView, view_current )+10,string_hash_to_newline(string(global.p_atk)));
draw_text(__view_get( e__VW.XView, view_current )+190,__view_get( e__VW.YView, view_current )+10,string_hash_to_newline(string(global.p_def)));


