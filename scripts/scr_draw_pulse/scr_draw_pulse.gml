{
pulse_frame += pulse_speed;

if(path_exists(pulse_path) and
   path_get_number(pulse_path) > 0){
	draw_path_sprite(pulse_path, 0, 0, sprite_get_width(pulse) * pulse_width, pulse, pulse_frame, 1, 1, c_white, 1, 8, false);
}

if(sprite_index != -1){
	draw_self();
}
}