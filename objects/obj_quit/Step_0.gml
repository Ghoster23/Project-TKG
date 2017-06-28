//português
if global.language = 2{
    image_index=1;
    if point_in_rectangle(mouse_x,mouse_y,1,343,40,353) {
        image_alpha=1;
    } else image_alpha =0.8;
}
//english
else if global.language = 1{
    image_index=2;
    if point_in_rectangle(mouse_x,mouse_y,1,343,40,353) {
        image_alpha=1;
    } else image_alpha=0.8;
}

