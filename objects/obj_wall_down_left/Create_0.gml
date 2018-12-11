event_inherited();

layer = layer_get_id("PS");

rm_x = x div global.roomwd;
rm_y = y div global.roomhg;

helper = instance_create_layer(x,y,layer,obj_wall_down_helper);