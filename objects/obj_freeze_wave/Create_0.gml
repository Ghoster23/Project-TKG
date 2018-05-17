alarm[0] = 5 * room_speed;

dir = point_direction(x,y,mouse_x,mouse_y);

phy_rotation = -dir - 45;
phy_fixed_rotation = true;

physics_apply_impulse(x,y,lengthdir_x(15,dir),lengthdir_y(15,dir));

value = 119;

values[0] = 0;
values[1] = 3;
values[2] = 2;
values[3] = 3;

paint = false;

on = false;