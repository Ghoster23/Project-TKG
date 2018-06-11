randomize();
event_inherited();

if(not global.pause){
	scr_pause_end(5);
	
	///Enemy Behaevior
	switch(state){
		//Concealed
		case 0:			
			///Mimic Tell
			if(blink){
				if(image_speed == 0){
				    image_speed = 0.2;
					
				}else if(image_speed == 0.2 and (image_index == 0 or image_index == 9)){
				    image_speed = 0;
				    image_index = 0;
				    blink = false;
				}
			}
		break;
	
		//Chase and attack player
		case 2:
			//Wooble
		    a += 1;
		    phy_rotation = 25 * sin(a);
        
			//Move
		    scr_define_path(self, global.body);
			path = global.ai_path;
			scr_move_entity(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
		break;
	
		//Death
		case 3:
			if(sprite_index != spr_mimic_d){
				//Die
		        alarm[5]     = 20;
		        sprite_index = spr_mimic_d;
				
			}
			
			//Wooble
		    a += 1;
		    phy_rotation = 25 * sin(a);
		break;
	}	
}else {
	scr_pause_start(5);
}