if global.menu2_state =0{
   instance_destroy();
} else if global.menu2_state =1{
    //português
    if global.language = 1{
        if fs_toggle = true {
            if point_in_rectangle(mouse_x,mouse_y,258,130,386,144) {
                image_index=1;
            } else image_index=0;
        } else if fs_toggle = false {
            if point_in_rectangle(mouse_x,mouse_y,258,130,386,144) {
                image_index=3;
            } else image_index=2;
        }
    }
    //english
    if global.language = 2{
        if fs_toggle = true {
            if point_in_rectangle(mouse_x,mouse_y,258,130,386,144) {
                image_index=5;
            } else image_index=4;
        } else if fs_toggle = false {
            if point_in_rectangle(mouse_x,mouse_y,258,130,386,144) {
                image_index=7;
            } else image_index=6;
        }
    }
}

