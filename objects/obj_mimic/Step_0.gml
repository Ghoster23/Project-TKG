randomize();
event_inherited();

if(not global.pause){
	scr_pause_end(5);
	
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
			path = global.ai_path;
			scr_move_entity(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
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
	scr_pause_start(5);
}