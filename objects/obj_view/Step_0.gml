if(obj_view.x == global.vfx && obj_view.y == global.vfy) and room == rm_level{
    speed = 0;
	stopped = true;
}else {
	stopped = false;
	global.shake = 0;
	
	if ox != 0 and oy != 0{
		x = ox;
		y = oy;
	}
}

if room == rm_dead{
    instance_destroy();
}

if global.shake > 0 and stopped	{
	ox = global.vfx;
	oy = global.vfy;
	
	x = ox + irandom_range(-global.shake,global.shake);
	y = oy + irandom_range(-global.shake,global.shake);
	
	global.shake *= 0.9;
}