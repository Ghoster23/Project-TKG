impact = false;
physics_apply_impulse(x, y, lengthdir_x(200, point_direction(x,y,mouse_x,mouse_y)),lengthdir_y(200, point_direction(x,y,mouse_x,mouse_y)));
image_speed=2.4;

phy_rotation += speed;

event_inherited();