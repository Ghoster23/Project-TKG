scr_interactable_step();

if(interacted and image_index == 0){
	scr_sound(snd_open_chest);
    closed = false;
    image_speed = 1;
	
}

if(image_index >= 7 and image_speed != 0){
    image_speed = 0;
	image_index = 8;
	
	scr_drops();
}

