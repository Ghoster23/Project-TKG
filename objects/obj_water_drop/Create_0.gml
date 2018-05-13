// Inherit the parent event
event_inherited();

values[0] = 1;
values[1] = 1;
values[2] = 1;
values[3] = 3;

value = 59;

on = true;

image_xscale = 1;
image_yscale = 1;

paint = true;

v = 1.5;
e_time = 5;
rate = (v - 1) / e_time;

wd_inc = rate * sprite_get_width(sprite_index);

state = 0;