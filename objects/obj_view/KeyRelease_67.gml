/// @description Insert description here
// You can write your code in this editor
surface_resize(application_surface,global.MonitorW,global.MonitorH);

camera_set_view_size(view_camera[0],room_width,room_height);
camera_set_view_border(view_camera[0],room_width/2,room_height/2);
x-=global.roomwd/2;
y-=global.roomhg/2;