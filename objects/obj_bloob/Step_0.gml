event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(alarm_count);
    
    ///Enemy Behavior
    switch(state){
		///Idle
        case 0:            
        break;
		
		///Travel
        case 1:
            scr_move_entity(dir,4);
            
        break;
		
		///Fallen
        case 2:			
			switch(fall_state){
				case 0:
					offs = scr_approach(offs, 0, 4);
					
					if(offs == 0){
						fall_state = 1;
						alarm[4] = 1 * room_speed;
					}
				break;
				
				case 1:
				break;
				
				case 2:
					offs = scr_approach(offs, 24, 8);
					
					if(offs == 24){
						state = 4;
						fall_state = 0;
					}
				break;
			}
			
        break;
		
		//Phase
		case 3:
			switch ph_state {
				case 0: //Vanish
				break;
				
				case 1: //Determine where to reappear
					ph_x = lengthdir_x(32,dir);
					ph_y = lengthdir_y(32,dir);
					
					if(place_meeting(phy_position_x + ph_x, phy_position_y + ph_y, obj_wall_parent) ||
					   place_meeting(phy_position_x + ph_x, phy_position_y + ph_y, obj_door_parent)){
						ph_state = 2;
					}else {
						phy_position_x += ph_x;
						phy_position_y += ph_y;
						
						ph_state = 3;
					}
				break;
				
				case 2: //Stay in the room
					dir += 180;
					ph_state = 3;
				break;
				
				case 3: //Reappear
				break;
			}
		break;
		
		//Find Anchor
		case 4:
			ach_dis = 4;
			ach_w   = collision_circle(phy_position_x,phy_position_y,ach_dis,obj_wall_parent,true,false);
			
			while(ach_w == noone){
				ach_dis++;
				ach_w = collision_circle(phy_position_x,phy_position_y,ach_dis,obj_wall_parent,true,false);
			}
			
			dir = 0;
			ach_w_ = collision_line(phy_position_x,phy_position_y,
									phy_position_x + lengthdir_x(ach_dis,dir),
									phy_position_y + lengthdir_y(ach_dis,dir),
									obj_wall_parent,true,false);
									
			while(ach_w != ach_w_){
				dir += 2;
				
				if(dir >= 360){
					dir = 0;
					ach_dis++;
				}
				
				ach_w_ = collision_line(phy_position_x,phy_position_y,
									phy_position_x + lengthdir_x(ach_dis,dir),
									phy_position_y + lengthdir_y(ach_dis,dir),
									obj_wall_parent,true,false);
			}
			
			if(ach_dis >= 16){				
				state = 1;
				
			}else {				
				state = 0;
				alarm[5] = 2 * room_speed;
			}
			
			ach_dir = dir;
		break;
		
		///Die
        case 5:
			//Change sprite
			if sprite_index != spr_bat_d {
	            sprite_index = spr_bat_d;
				image_index  = 0;
				image_speed  = 0.5;
				flash        = false;
			}
			
			if image_index == 3{
				scr_kill_enemy();
			}
			
		break;
		case "pause":
		break;
	} 
}

if global.pause {
	scr_pause_start(alarm_count);
}