if(not global.pause){
	scr_pause_end(2);
	
	if(active){
		if(alarm[1] == -1){
			if(collision_line(mid_x,mid_y,max_x,max_y,global.body,true,true) != noone){
				clr = c_green;
				if(collision_line(mid_x,mid_y,max_x,max_y,obj_above_ground_parent,true,true) == noone){
					triggered = true;
					clr = c_yellow;
				}
			  
			}else if(collision_line(mid_x,mid_y,max_x,max_y,obj_grounded_enemy_parent,true,true) != noone){
				clr = c_green;
				if(collision_line(mid_x,mid_y,max_x,max_y,obj_above_ground_parent,true,true) == noone){
					clr = c_yellow;
					triggered = true;
				}
			}
		}
	
		if(triggered and ammo > 0){
			triggered = false;
			
			var arrow = scr_create_damage_dealer(mid_x + lengthdir_x(16,dir),mid_y + lengthdir_y(16,dir),
									 obj_arrow,id,false,1,stats.def,2,5);
			arrow.dir = -degtorad(dir);
			arrow.spd = 7;
			part_particles_create(global.ps_if,mid_x + lengthdir_x(16,dir),mid_y + lengthdir_y(16,dir),global.pt_smoke,5);
			ammo--;
			
			alarm[1]  = 2.5 * room_speed;
		}
	}
	
}else {
	scr_pause_start(2);
	
}