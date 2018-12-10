event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(alarm_count);
	
	//check if dead and if so kill it
	if(stat[stats.hp] <= 0){
		state = "dead";
	}

	//states for enemy behaviour
	switch(state){
        case "follow":  //move like a spider
			//bit that runs once before each spurt of movement
			if moved == false{ 
				//show_debug_message("bit that runs once before each spurt of movement");
				moved = true;
				
				scr_define_path(self, global.body);
				action_dir = point_direction( x, y,path_get_point_x(mp_path,1), path_get_point_y(mp_path,1));
				
				sprite_index=spr_hspider_walk;
				image_speed=1.2;
				
				if (action_dir <= 90 or action_dir >= 270){
					image_xscale=-1;
				}else{
					image_xscale=1;
				}
            } 
			
			//if youve detected that the time to break is here, stop
			if(move_time_counter <= 0 and breaking = false){
				//show_debug_message("breaktime");
				alarm_set(8,break_time); //this alarm is the break between strides
				breaking = true;
				
			//if its not time to take a break yet just move
			}else if(move_time_counter > 0 and breaking = false){
				scr_move_entity(action_dir,1);
				move_time_counter-=1;
				
			}else if(breaking==true){
				image_speed=0;
				image_index=0;
				if(dis<=130 and  !collision_line(x,y,global.body.x,global.body.y,obj_solid_parent,false,true)){
					event_perform(ev_alarm,8);//tell it that break time is over
					state = "go2hide";		  //run transition state
					exit;	
				}
			}
        break;
		
		case "go2hide": //transition state between follow and hide
			sprite_index = spr_hspider_hide;
			image_speed  = 1;
			transition_time_counter-=1;
			
			if(transition_time_counter<=0){
				transition_time_counter=transition_time;
				image_index=8;
				image_speed=0;
				state = "hide";
				inv = true;
				exit;
			}
			
		break;
		
		case "go2follow": //transition state between follow and hide
			transition_time_counter-=1;
			
			if(transition_time_counter<=0){
				transition_time_counter=transition_time;
				image_index=0;
				image_speed=0;
				state = "follow";
				exit;
			}
			
		break;
		
		case "hide": //hide and shoot	
			//this bit runs once perr shot
			if shot == false{ 
				//show_debug_message("bit that runs once before each shot");
				shot = true;
				
				if(!collision_line(x,y,global.body.x,global.body.y,obj_solid_parent,false,true)){
					bomb_x = x + lengthdir_x(20, player_dir);
					bomb_y = y + lengthdir_y(20, player_dir);
					bomb = instance_create_layer(bomb_x, bomb_y,layer,obj_simple_bomb);
					with bomb{
						physics_apply_impulse(x, y, lengthdir_x(10, other.player_dir ),lengthdir_y(10, other.player_dir ));
					}
					
					sprite_index=spr_hspider_shoot;
					image_speed=1;
				}
				alarm_set(9,shot_cooldown_time);
            }
			//if breaking betwween shots
			else{
				if(sprite_index == spr_hspider_shoot and image_index >= image_number-1){
					image_index = 0;
					image_speed = 0;
				}
							
				if(dis>130){
					event_perform(ev_alarm,9);//tell it that break time is over
					state = "go2follow";      //run transition state
					sprite_index=spr_hspider_hide;
					image_speed=-1;
					image_index=8;
					inv = false;
					exit;	
				}
			}
			
			
		break;
		
		case "dead": //dead
			solid = false;
			image_speed = 0;
			
			part_type_direction(global.pt_bbits,point_direction(global.body.x,global.body.y,x,y),point_direction(global.body.x,global.body.y,x,y),0,0);
			part_type_direction(global.pt_hspider_deadbits,point_direction(global.body.x,global.body.y,x,y),point_direction(global.body.x,global.body.y,x,y),0,0);
			
			part_particles_create(global.ps_if,x,y,global.pt_smoke,10);
            part_particles_create(global.ps,x,y,global.pt_bbits,8);
			part_particles_create(global.ps,x,y,global.pt_hspider_deadbits,2);
			
			mp_grid_clear_cell(mp_grid,x div 32, y div 32);
			//sounds
			scr_sound(snd_hit_barrel);
			scr_sound(snd_wood_bits1,snd_wood_bits2,snd_wood_bits3);
			
            scr_kill_enemy();
		break;
	}   

}else if go{
	scr_pause_start(alarm_count);
}
