if global.menu2_state = 0 {
    instance_destroy();
} else if global.menu2_state = 2 {
    if global.language =1 { image_index=0; }
    else if global.language = 2 { image_index=1}
}

