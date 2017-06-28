global.sfxvolume = image_index;

if global.menu2_state = 0 {
    instance_destroy();
} else if global.menu2_state = 2 {
    if point_in_rectangle(mouse_x,mouse_y,x-11,y-4,x+109,y+3) {
        image_alpha=1;
        } else image_alpha=0.6;    
}



