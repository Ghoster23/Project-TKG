{
draw_set_font(font1);
draw_rectangle_colour(x,y,x+100,y+(menuText[menuPage,0]*16),c_white,c_white,c_white,c_white,false)
draw_rectangle_colour(x,y,x+100,y+(menuText[menuPage,0]*16),c_black,c_black,c_black,c_black,true)
for (i = 1; i <= menuText[menuPage,0]; i+=1){
    if (menuSelected = i) {draw_set_color(c_gray)} 
    else { draw_set_color(c_black) }
    draw_text(x,y+(i*16)-16,string_hash_to_newline(menuText[menuPage,i]));
    }
}

