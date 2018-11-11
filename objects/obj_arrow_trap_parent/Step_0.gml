if(not global.pause){
	scr_pause_end(2);
	
	if(on){
		if(alarm[1] == -1){
			var enemy = collision_line(mid_x,mid_y,max_x,max_y,obj_grounded_enemy_parent,true,true);
			
			if(collision_line(mid_x,mid_y,max_x,max_y,global.body,true,true) != noone){
				var xx = global.body.phy_position_x;
				var yy = global.body.phy_position_y;
				
				if(collision_line(mid_x,mid_y,xx,yy,obj_above_ground_parent,true,true) == noone){
					triggered = true;
				}
			  
			}else if(enemy != noone){
				var xx = enemy.phy_position_x;
				var yy = enemy.phy_position_y;
				
				if(collision_line(mid_x,mid_y,xx,yy,obj_above_ground_parent,true,true) == noone){
					triggered = true;
				}
			}
		}
	
		if(triggered and ammo > 0){
			triggered = false;
							 
			scr_create_projectile(mid_x + lengthdir_x(16,dir),mid_y + lengthdir_y(16,dir),
									obj_arrow,id,false,7,-degtorad(dir),1,stats.def,2,5);
			part_particles_create(global.ps_if,mid_x + lengthdir_x(16,dir),mid_y + lengthdir_y(16,dir),global.pt_smoke,5);
			ammo--;
			
			alarm[1]  = 2.5 * room_speed;
		}
	}
	
}else {
	scr_pause_start(2);
	
}