if global.menu2_state =0 || global.menu2_state =1 || global.menu2_state =2 || global.menu2_state =3 {
    //português
    if global.language = 1{
        image_index=1;
        if point_in_rectangle(mouse_x,mouse_y,279,271,370,293) {
            image_alpha=1;
        } else image_alpha =0.6;
    }
    //english
    else if global.language = 2{
        image_index=2;
        if point_in_rectangle(mouse_x,mouse_y,279,271,370,293) {
            image_alpha=1;
        } else image_alpha=0.6;
    }
} 

