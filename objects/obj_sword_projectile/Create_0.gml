dir=global.body.rotacao;

phy_rotation=-dir + 90;

image_speed = 1.1;

alarm[0] = 6 * room_speed;

scale = global.p_will / 100;

image_xscale = scale + 1;
image_yscale = scale + 1;

hspd = 0;
vspd = 0;

//Get hspd and vspd
hspd = lengthdir_x(10,dir);
vspd = lengthdir_y(10,dir);