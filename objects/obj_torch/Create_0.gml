image_speed = 0;

lit = true;

rm_cl = x div global.roomwd;
rm_rw = y div global.roomhg
dir = 1;
o = 0;

event_inherited();

offs = 48;
offset = true;

front_light = scr_create_light(x+16,y+4,true,25,make_color_hsv(30,255,255),0.3);