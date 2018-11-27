event_inherited();
image_index=0;
sprite_set_offset(sprite_index,21,16);
image_speed=0;
dir=point_direction(global.body.x,global.body.y,x,y);
physics_apply_impulse(x, y, lengthdir_x(20, dir ),lengthdir_y(20, dir ));
physics_apply_angular_impulse(2);
alarm[0] = 0.8 * room_speed;