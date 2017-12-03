if(room == rm_level){
	if(x == vfx and y == vfy and not stopped){
	
		ox = vfx;
		oy = vfy;
	
		stopped = true;
	
	}else if((x != vfx or y != vfy) and stopped){
		stopped = false;
		global.shake = 0;
	
		if ox != 0 and oy != 0{
			x = ox;
			y = oy;
		
			ox = 0;
			oy = 0;
		}
		
	}
	
	if(not stopped){
		x = scr_aproach(x,vfx,16);
		y = scr_aproach(y,vfy,16);
	}
}

if room == rm_CH_boss {
	speed = 0;
	stopped = true;

}

if room == rm_dead{
    instance_destroy();
}