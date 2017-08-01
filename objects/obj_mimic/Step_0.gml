randomize();
scr_get_input();
event_inherited();

if not global.pause {
	scr_pause_end(5);
	
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
			if (dis < 32 and interact_key) or damaged {
			    state = 1;
    
			    solid = true;
			    image_speed = .9;
			    sprite_index = spr_mimic_a;
        
			    e_spd = 4;
			}
		
	    break;
	
		//Chase and attack player
	    case 1:
			//Wooble
	        a += 1;
	        phy_rotation = 25 * sin(a);
        
			//Move
	        phy_position_x += floor(sign(obj_body.x - x)*e_spd);
	        phy_position_y += floor(sign(obj_body.y - y)*e_spd);
        
	        ///Die
	        if e_hp <= 0 and sprite_index != spr_mimic_d{
				flash=true;
				//stop flash
				alarm[4]=room_speed*0.03;
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
	if not damaged {
		scr_damage_enemy();
	}
	
}else {
	scr_pause_start(5);
}