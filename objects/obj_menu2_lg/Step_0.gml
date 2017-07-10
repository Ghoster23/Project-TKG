if global.menu2_state =0{
   instance_destroy();
} else if global.menu2_state =1{
    //português
    if global.language = 1{
        if point_in_rectangle(mouse_x,mouse_y,258,183,357,198) {
            image_index=1;
        } else image_index=0;
    }
    //english
    if global.language = 2{
        if point_in_rectangle(mouse_x,mouse_y,258,183,357,198) {
            image_index=3;
        } else image_index=2;
    }
}

