if(obj_view.x == global.vfx && obj_view.y == global.vfy){
    speed = 0;
}

if room == rm_dead{
    instance_destroy();
}

if room == rm_level{
	camera_set_view_pos(view_camera[0],x-(global.roomhg div 2),y-(global.roomwd));
	camera_set_view_size(view_camera[0],global.roomhg,global.roomwd);
}