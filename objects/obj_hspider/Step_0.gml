if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
	alarm[0]=room_speed*2;
}

///Exist
if go and not global.pause{
    visible = true;


//states for enemy behaviour

	switch(state){
        case 0:  //move like a spider
			if moved==false{ 
				
				sprite_index=spr_hspider_walk;
				image_speed=2;
				if (action_dir <= 90 or action_dir >= 270){
					image_xscale=-1;
				}
				
				else{
					image_xscale=1;
				}
				
	            //Get hspd and vspd
	            hspd = lengthdir_x(e_spd,action_dir);
	            vspd = lengthdir_y(e_spd,action_dir);
			
	            //Move
	            phy_position_x += hspd;
	            phy_position_y += vspd;
				
            }
			else if moved==true{ 
				image_xscale=1
				image_index=0;
				image_speed=0;
			}
			show_debug_message("the spider is in state 0");
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
				image_speed=1;
			}
			else{
				image_speed=0;
			}
		
			show_debug_message("the spider is in state 1");
			show_debug_message(substate);
			
		break;
		
		case 2:  //un-hide
			image_xscale=1
			sprite_index=spr_hspider_hide;
			image_speed=-1.1;
			
			
			show_debug_message("the spider is in state 2");
		
		break; 
		
		case 3: //ded
		
			show_debug_message("the spider is in state ded");
		break;
	}

}
