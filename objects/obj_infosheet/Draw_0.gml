draw_self();
if go==true{
    scr_infosheet();
    draw_set_colour(c_black);
    draw_set_font(font_infosheet);
    draw_text_colour(x+58, y+56, string_hash_to_newline(name), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+72, y+92, string_hash_to_newline(height), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+69, y+127, string_hash_to_newline(weight), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+76, y+163, string_hash_to_newline(weapon), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+82, y+199, string_hash_to_newline(abilities), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+86, y+264, string_hash_to_newline(strength), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+86, y+285, string_hash_to_newline(vitality), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+95, y+308, string_hash_to_newline(resistance), c_black, c_black, c_black, c_black, 0.6);
    draw_text_colour(x+71, y+332, string_hash_to_newline(agility), c_black, c_black, c_black, c_black, 0.6);
}




