// Inherit the parent event
once = false;

strength = 0;
stop = false;
pullback = false;
event_inherited();
physics_apply_impulse(x, y, lengthdir_x(150, point_direction(x,y,mouse_x,mouse_y)),lengthdir_y(150, point_direction(x,y,mouse_x,mouse_y)));
phy_fixed_rotation = true;
phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
num_links = 30;
lenchain = 180;

pullback_time = 0.05*room_speed;
original_pb_time = pullback_time;

tt = instance_create_layer(global.body.x,global.body.y,layer,obj_testweight);
tt.owner = global.body;
