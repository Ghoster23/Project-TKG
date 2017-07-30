randomize();
scr_get_input();
event_inherited();

if not global.pause {
	for(var i = 0; i < 6; i++){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}
	
	///Enemy Behaevior
	switch(state){
		//Concealed
		case 0:
			///Mimic Tell
			if interval == false and blink == false{
			    interval = true;
			    alarm[1] = 5 * room_speed;
			}

			if blink == true{
			    if image_speed == 0{
			        image_speed = 0.2;
			    }else if image_speed == 0.2 and (image_index == 0 or image_index == 9){
			        image_speed = 0;
			        image_index = 0;
			        blink = false;
			    }
			}
		
			/// Enemy States
			if dis < 32 and interact_key {
			    state = 1;
    
			    solid = true;
			    image_speed = .9;
			    sprite_index = spr_mimic_a;
        
			    e_spd = 4;
			}
		
	        ///Do something about the density
		
	    break;
	
		//Chase and attack player
	    case 1:
			//Wooble
	        a += 1;
	        phy_rotation = 25 * sin(a);
        
			//Move
	        phy_position_x += floor(sign(obj_body.x - x)*e_spd);
	        phy_position_y += floor(sign(obj_body.y - y)*e_spd);
        
	        image_blend = c_white;
        
            
        
	        if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0){
	            e_hp -= global.p_satk div e_sdef;
	            damaged = true;
				flash=true;
				alarm[5] = room_speed*0.03;
			
	        }
        
			///Flash when damaged
	        if damaged = true{
				//stop damaged
	            alarm[4] = 20;
	        }
        
	        ///Die
	        if e_hp <= 0 and sprite_index != spr_mimic_d{
				flash=true;
				//stop flash
				alarm[5]=room_speed*0.03;
				//die
	            alarm[2] = 20;
	            sprite_index = spr_mimic_d;
				state = 3;
			}
		
	    break;
	
		//Destroy the instance 
	    case 3:
			//Wooble
	        a += 1;
	        phy_rotation = 25 * sin(a);
	    break;
	
		//Pause
		case "pause":
		break;
	}
	///Get Damaged
	if(place_meeting(x,y,obj_swing)){
	    e_hp -= global.p_atk div e_def;
	    damaged = true;
		flash = true;
		alarm[5]=room_speed*0.03;
	
		if state == 0{
			state = 1;
    
			solid = true;
			image_speed = .9;
			sprite_index = spr_mimic_a;
        
			e_spd = 4;
		}
	}
	
}else {
	for(var i = 0; i < 6; i++){
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