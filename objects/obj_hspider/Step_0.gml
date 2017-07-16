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
		
		case 3: //ded
		
		solid = false;
			image_speed = 0;
            instance_create_layer(x,y,layer,obj_cadaver);
            
            with instance_nearest(x,y,obj_cadaver){
                sprite_index = spr_peasent_m_s;
                image_index = 5;
                image_speed = 0;
                image_blend = c_gray;
                image_angle -= 90;
                phy_rotation = irandom(0);
            }
            
            if((irandom(99) + 1) <= 10){
                instance_create_layer(x,y,layer,obj_hheart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create_layer(x,y,layer,obj_fheart);
                
            }
            
		instance_destroy();
		break;
		
		case "pause":
		
		break;
	}
	
	///Die
    if(e_hp <= 0) and state != 3{
        global.combat -= 1;
        state = 3;
        alarm[5] = 5;
        
    }
	

	///Get Damaged
    if(place_meeting(x,y,obj_swing) and state==0){
        e_hp -= global.p_atk div e_def;
        damaged = true;
    }
    
    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.phy_angular_velocity>0) and state == 0{
        e_hp -= global.p_satk div e_sdef;
        damaged = true;
    }
    
	if place_meeting(x,y,obj_explosion){
		e_hp -= global.p_satk div e_sdef;
		damaged = true;
	}
	
    if damaged == true{
        flash=true;
		damaged=false;
		alarm[5]=room_speed*0.08;
    }

}

if global.pause == true {
	for(i = 0; i < 6; i += 1){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
	
	if image_speed != 0{
		prev_image_speed = image_speed;
		image_speed = 0;
	}
}

if global.pause == false {
	for(i = 0; i < 6; i += 1){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}

}
