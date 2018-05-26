if(not global.pause){
	scr_pause_end(2);
	
	if(active and alarm[1] == -1){
		if(collision_line(mid_x,mid_y,max_x,max_y,global.body,true,false)){
			if(!collision_line(mid_x,mid_y,max_x,max_y,obj_above_ground_parent,true,false)){
				triggered = true;
			}
			  
		}else if(collision_line(mid_x,mid_y,max_x,max_y,obj_grounded_enemy_parent,true,false)){
			if(!collision_line(mid_x,mid_y,max_x,max_y,obj_above_ground_parent,true,false)){
				triggered = true;
			}
		}
	}
	
	if(triggered and ammo > 0){
		triggered = false;
		alarm[0]  = 15;
	}
	
}else {
	scr_pause_start(2);
	
}