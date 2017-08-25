{
  draw_set_font(font0)
  prev_space=0
  for (i = 1; i <= menuText[0]; i+=1) {
    if (menuSelected = i) { draw_set_color(c_gray); } else { draw_set_color(c_black); }
    draw_text(x+prev_space,y,string_hash_to_newline(menuText[i]));
    prev_space=prev_space+x+((string_length(menuText[i]))*8)
  }
}



