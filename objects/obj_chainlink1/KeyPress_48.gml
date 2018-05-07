/// @description Insert description here
// You can write your code in this editor
dir = point_direction(x,y,mouse_x,mouse_y);
physics_apply_impulse(x, y, lengthdir_x(300, dir ),lengthdir_y(300, dir ));
