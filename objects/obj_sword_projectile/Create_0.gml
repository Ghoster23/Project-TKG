dir=point_direction(obj_body.x,obj_body.y,mouse_x,mouse_y);

phy_rotation=-dir;

image_speed = 0.6;

hspd = 0;
vspd = 0;

//Get hspd and vspd
hspd = lengthdir_x(10,dir);
vspd = lengthdir_y(10,dir);