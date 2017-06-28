if global.bota = true {
    x-=20;
}

//potuguese
if global.language = 1{
    if point_in_rectangle(mouse_x,mouse_y,244,287,367,325) or selected=2 {
        image_index=2;
    } else if point_in_rectangle(mouse_x,mouse_y,260,227,378,270) or selected=1 {
        image_index=1;
    } else image_index=0;
}
//english
else if global.language = 2{
     if point_in_rectangle(mouse_x,mouse_y,244,287,367,325) or selected=2 {
        image_index=5;
    } else if point_in_rectangle(mouse_x,mouse_y,260,227,378,270) or selected=1 {
        image_index=4;
    } else image_index=3
}

