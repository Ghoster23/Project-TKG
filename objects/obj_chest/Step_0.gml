scr_get_input();

if interact_key and distance_to_object(obj_body) < 15 and closed == true{
	scr_sound(snd_open_chest);
    closed = false;
    image_speed = 1;
}

if image_index >= 7{
    image_speed = 0;
	image_index = 8;
}

