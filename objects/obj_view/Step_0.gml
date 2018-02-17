if(room == rm_level){
	if(!obj_pglobs.dead){
		if(not zooming and not zoomed){
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
	}else {
		if(x != global.body.phy_position_x || y != global.body.phy_position_y){
			x = scr_aproach(x,global.body.phy_position_x,8);
			y = scr_aproach(y,global.body.phy_position_y,8);
		}else {
			screen_save(working_directory + "death.png");
			room_goto(rm_dead);
		}		
	}
}

if room == rm_CH_boss {
	speed = 0;
	stopped = true;

}

if room == rm_dead{
    instance_destroy();
}