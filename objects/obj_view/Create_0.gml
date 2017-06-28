vx = 0;
vy = 0;

global.vfx = obj_view.x;
global.vfy = obj_view.y;

view_camera[0] = camera_create_view(0,0,room_width,room_height,0,obj_view,-1,-1,0,0);