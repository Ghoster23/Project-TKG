scr_get_input();

if(interact_key and in_range and closed){
	scr_sound(snd_open_chest);
    closed = false;
    image_speed = 1;
	
}

if image_index >= 7 and image_speed != 0{
    image_speed = 0;
	image_index = 8;
	
	drop = scr_drops();
	
	if drop != 0 {
		drop.x += 16;
		drop.y += 16;
	}
}

