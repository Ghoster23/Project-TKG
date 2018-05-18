/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
stop = false;
phy_angular_velocity = 1000; 
event_inherited();
physics_apply_impulse(x, y, lengthdir_x(100, point_direction(x,y,mouse_x,mouse_y)),lengthdir_y(100, point_direction(x,y,mouse_x,mouse_y)));

num_links = 30;
lenchain = 180;
testdist  =20;
