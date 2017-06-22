global.mvolume = image_index;
audio_sound_gain(snd_music,global.mvolume/100,100);

if global.menu2_state = 0 {
    instance_destroy();
} else if global.menu2_state = 2 {
    if point_in_rectangle(mouse_x,mouse_y,x-11,y-4,x+109,y+3) {
        image_alpha=1;
        } else image_alpha=0.6;    
}



