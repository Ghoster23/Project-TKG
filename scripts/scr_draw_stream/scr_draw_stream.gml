{
stream_frame += stream_speed;

if(path_exists(stream_path) and
   path_get_number(stream_path) > 0){
	draw_path_sprite(stream_path, 0, 0, sprite_get_width(stream), stream, stream_frame, 1, 1, c_white, 1, 8, false);
}

if(sprite_index != -1){
	draw_self();
}
}