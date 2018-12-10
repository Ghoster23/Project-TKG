randomize();
event_inherited();

if(not global.pause){
	scr_pause_end(alarm_count);
	
	///Enemy Behaevior
	switch(state){
		//Concealed
		case 0:			
		break;
	
		//Chase and attack player
		case 2:
			//Wooble
		    a += 1;
		    phy_rotation = 25 * sin(a);
        
			//Move
		    scr_define_path(self, global.body);
			scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),1);
		break;
	
		//Death
		case 3:
			//Wooble
		    a += 1;
		    phy_rotation = 25 * sin(a);
		break;
		
		case 6: //Stun
		break;
	}	
}else {
	scr_pause_start(alarm_count);
}