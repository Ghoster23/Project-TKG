if global.b_hp <= 0{
	state = 5;
}

if not global.pause {
	s_x = s_x + ss_x*5;

	if(s_x > 360 and ss_x == 1){
	    ss_x = -1;

	}
	if(s_x < 180 and ss_x == -1){
	    ss_x = 1;
    
	}
	
	scr_pause_end(10);
	
	if place_meeting(x,y,obj_swing){
		global.b_hp -= global.p_atk * 2 div global.b_def;
		sprite_index = spr_CH_deer_state_hurt;
		alarm[6] = 0.5 * room_speed;
	}

	///Action state based changes
	switch(state){
	    //Rock state
	    case 0:
	        ///Screen shake
        
	        ///Falling Rocks
	        if(alarm[0] > 5 * room_speed and alarm[0] mod 5 == 0){
	            x_s = obj_body.x - 30;
	            y_s = obj_body.y - 30;
            
	            x_e = obj_body.x + 30;
	            y_e = obj_body.y + 30;
            
	            instance_create_layer(x,y-500,"IF",obj_fln_rock);
				instance_create_layer(x,y-500,"IF",obj_fln_rock);
				instance_create_layer(x,y-500,"IF",obj_fln_rock);
	            sprite_index = spr_CH_deer_state_hurt;
	        }
        
	        ///Blocking Rocks
	        if(alarm[0] > 0 and alarm[0] < 6 and once == false){
	            f_x = x;
	            f_y = y+250;
	            instance_create_layer(x,y-100,"Instances",obj_CH_deer_brock);
	            f_x = x-100;
	            f_y = y+150;
	            instance_create_layer(x-100,y-200,"Instances",obj_CH_deer_brock);
	            f_x = x+100;
	            f_y = y+150;
	            instance_create_layer(x+100,y-200,"Instances",obj_CH_deer_brock);
	            once = true;
				sprite_index = spr_CH_deer_state;
	        }
        
	    break;
    
	    //Leaf State
	    case 1:
	        ///Leaf Barrage
	        if(once == false){
	            pat = "w";
	            alarm[1] = 10 * room_speed;
			
				instance_create_layer(x,y+16,"IF",obj_CH_leaf);
				instance_create_layer(x+4,y+16,"IF",obj_CH_leaf);
				instance_create_layer(x-4,y+16,"IF",obj_CH_leaf);
				instance_create_layer(x+8,y+14,"IF",obj_CH_leaf);
				instance_create_layer(x-8,y+14,"IF",obj_CH_leaf);
				instance_create_layer(x+12,y+10,"IF",obj_CH_leaf);
				instance_create_layer(x-12,y+10,"IF",obj_CH_leaf);
				instance_create_layer(x+16,y+6,"IF",obj_CH_leaf);
				instance_create_layer(x-16,y+6,"IF",obj_CH_leaf);
				instance_create_layer(x+16,y,"IF",obj_CH_leaf);
				instance_create_layer(x-16,y,"IF",obj_CH_leaf);

				alarm[8] = 0.15 * room_speed;
	            once = true;
            
	        }
                
	    break;
    
	    case 2:
	        ///Leaf Shooting
	        if(once == false){
	            alarm[2] = 10 * room_speed;
	            once = true;
            
	        }
        
	        pat = "f";
        
	        instance_create_layer(x,y,"IF",obj_CH_leaf);
	        instance_create_layer(x+10,y,"IF",obj_CH_leaf);
	        instance_create_layer(x-10,y,"IF",obj_CH_leaf);
        
	    break;
    
	    //Root State
	    case 3:
	        ///Follower roots
	        alarm[3] = 10 * room_speed;
	        instance_create_layer(x,y+32,"Instances",obj_CH_mroots);
	        state = 4;
	    break;
	    case 4:
		break;
	    //Defeat State
	    case 5:
	        ///Death animation
        
        
	        ///Destroy and give rewards
	        instance_create_layer(x,y,"Instances",obj_CH_stump);
	        instance_create_layer(x,y+15,"IF",obj_equipable);
			
			while instance_exists(obj_CH_deer_brock){
				with obj_CH_deer_brock{
					instance_destroy();
				}
			}
			if instance_exists(obj_CH_mroots){
				with obj_CH_mroots{
					instance_destroy();
				}
			}
			instance_destroy();
               
	    break;
	}
}else {
	for(i = 0; i < 10; i += 1){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = 0;
		}
	}
	
	prev_image_speed = image_speed;
	image_speed = 0;
}
