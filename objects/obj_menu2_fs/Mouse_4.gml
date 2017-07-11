if fs_toggle =false {
    if point_in_rectangle(mouse_x,mouse_y,258,130,386,144) {
        window_set_fullscreen(true);
        fs_toggle = true;
    }
} 
else if fs_toggle =true {
    if point_in_rectangle(mouse_x,mouse_y,258,130,386,144) {
        window_set_fullscreen(false);
        window_set_position(0,0);
        fs_toggle = false;
    }
}

