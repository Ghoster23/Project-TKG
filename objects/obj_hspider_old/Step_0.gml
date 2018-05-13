event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(8);

	//states for enemy behaviour
	switch(state){
        case 0:  //move like a spider
			if moved == false{ 
				
				sprite_index=spr_hspider_walk;
				image_speed=2;
				
				if (action_dir <= 90 or action_dir >= 270){
					image_xscale=-1;
				}
				
				else{
					image_xscale=1;
				}
				
	            scr_move_entity(action_dir,1);
				
            }
			else if moved==true{ 
				image_xscale=1
				image_index=0;
				image_speed=0;
			}

        break;
		
		case 1: //hide and shoot
			
			if substate == "hiding"{
				image_xscale=1
				sprite_index=spr_hspider_hide;
				image_speed=1.1;
			
			}
			else if substate=="shooting"{
				image_xscale=1
				sprite_index=spr_hspider_shoot;
			}
			else{
				image_speed=0;
			}
			
		break;
		
		case 2:  //un-hide
			image_xscale=1
			sprite_index=spr_hspider_unhide;
			image_speed=1.1;
			
		
		break; 
		
		case 3: //dead
		
			solid = false;
			image_speed = 0;
			
			part_type_direction(global.pt_bbits,point_direction(global.body.x,global.body.y,x,y),point_direction(global.body.x,global.body.y,x,y),0,0);
			part_type_direction(global.pt_hspider_deadbits,point_direction(global.body.x,global.body.y,x,y),point_direction(global.body.x,global.body.y,x,y),0,0);
			
			part_particles_create(global.ps_if,x,y,global.pt_smoke,10);
            part_particles_create(global.ps,x,y,global.pt_bbits,8);
			part_particles_create(global.ps,x,y,global.pt_hspider_deadbits,2);
			
			mp_grid_clear_cell(global.ai_grid,x div 32, y div 32);
			//sounds
			scr_sound(snd_wood_bits1,snd_wood_bits2,snd_wood_bits3);
			
            scr_kill_enemy();
			
		break;
		
		case "pause":	
		break;
	}   

}else if go{
	scr_pause_start(8);
	
}
