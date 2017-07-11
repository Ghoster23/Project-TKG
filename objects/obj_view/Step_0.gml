if(obj_view.x == global.vfx && obj_view.y == global.vfy) and room == rm_level{
    speed = 0;
	stopped = true;
}else {
	stopped = false;
}

if room == rm_dead{
    instance_destroy();
}