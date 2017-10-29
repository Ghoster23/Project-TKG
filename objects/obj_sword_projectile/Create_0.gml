dir=global.body.rotacao;

phy_rotation=-dir;

image_speed = 0;

image_index = 2;

image_blend = c_aqua;

alarm[0] = 6 * room_speed;

hspd = 0;
vspd = 0;

//Get hspd and vspd
hspd = lengthdir_x(10,dir);
vspd = lengthdir_y(10,dir);