event_inherited();

draw_script = scr_draw_stream;
stream_path = path_add();
path_set_closed(stream_path,false);
path_set_kind(stream_path,1);
path_set_precision(stream_path, 8);
stream = spr_water_stream;
stream_frame = 0;
stream_speed = 0.6;

node_list  = ds_list_create();
node_count = 0;

p_xx = x;
p_yy = y;

destroyed = false;