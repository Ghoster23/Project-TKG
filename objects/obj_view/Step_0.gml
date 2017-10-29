if(obj_view.x == global.vfx && obj_view.y == global.vfy and room == rm_level){
    speed = 0;
	stopped = true;
	
	ox = global.vfx;
	oy = global.vfy;
	
}else if room == rm_level{
	stopped = false;
	global.shake = 0;
	
	if ox != 0 and oy != 0{
		x = ox;
		y = oy;
		
		ox = 0;
		oy = 0;
	}
}

if room == rm_CH_boss {
	speed = 0;
	stopped = true;

}

if room == rm_dead{
    instance_destroy();
}