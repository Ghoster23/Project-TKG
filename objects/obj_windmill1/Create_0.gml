 image_speed=0;

angle_off=20;

len = point_distance(320,180,x,y);
dir = point_direction(320,180,x,y);

y_comp = y;

x=320+lengthdir_x(len,dir-angle_off);
y=180+lengthdir_y(len,dir-angle_off);

xoff = 320-x;
yoff = 180-y;

sprite_set_offset(sprite_index,xoff,yoff)
x=320;
y=180;

