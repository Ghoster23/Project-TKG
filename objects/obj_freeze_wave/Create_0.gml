alarm[0] = 5 * room_speed;

dir = point_direction(x,y,mouse_x,mouse_y);

phy_rotation = -dir + 45;
phy_fixed_rotation = true;

physics_apply_impulse(x,y,lengthdir_x(30,dir),lengthdir_y(30,dir));