if global.options = false {
    if image_index > 16 && image_index <= 17 {
        instance_destroy();   
    }
}
else if global.options = true {
    image_speed= -1;
}

