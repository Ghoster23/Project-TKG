randomize();
scr_get_input();
event_inherited();

if not global.pause {
	scr_pause_end(5);
	
	///Enemy Behaevior
	switch(state){
		//Concealed
		case 0:
			//part_emitter_region(global.ps_if,em,x-2,x+2,y-2,y+2,ps_shape_ellipse,ps_distr_linear);
			
			///Mimic Tell
			if interval == false and blink == false{
			    interval = true;
			    alarm[1] = 5 * room_speed;
				
			}
			
			if(global.status[5,0]){
				draw_script = scr_draw_outline;
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
			    alarm[5] = 0.5 * room_speed;
				
			    image_speed = .9;
			    sprite_index = spr_mimic_a;
				phy_position_x += 5;
				phy_position_y += 5;
				phy_fixed_rotation = false;
			    e_stats[stats.spd] = 4;
				
			}
		
	    break;
	
		//Chase and attack player
	    case 1:
			//Wooble
	        a += 1;
	        phy_rotation = 25 * sin(a);
        
			//Move
	        scr_define_path(self, global.body);
			path = global.ai_path;
			scr_move_enemy(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
			
			///Damage the Player
			if(place_meeting(x,y,global.body)){
				if state == 1 and e_stats[stats.hp] > 0 and not atk_cd{
					scr_damage_player(1);
					alarm[3] = 0.2 * room_speed;
				}
			}
			
	        ///Die
	        if e_stats[stats.hp] <= 0 and sprite_index != spr_mimic_d{
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
	}
	
	///Get Damaged
	if not damaged {
		scr_damage_enemy();
	}
	
}else {
	scr_pause_start(5);
}