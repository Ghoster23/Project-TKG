randomize();

///Start enemy
if(place_meeting(x,y,obj_ppon)) and not visible{
    visible = true;
    global.act_enemies += 1;
    
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    scr_pause_end(5);
    
    ///Enemy Behaevior
    switch(state){
        case 0:
            scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go after the player
			scr_define_path(self, obj_body);
			path = global.ai_path;
			scr_move_enemy(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
            
        break;
        case 2:  //Dead state
			image_speed = 0.2;
			 
            if image_index == 5{
				instance_destroy();
            }
			
		break;
		case "pause":
		break;

    }
    
	//Get damaged
	if not damaged {
		scr_damage_enemy();
	
	}

    ///Creep
	rmx = x mod global.roomwd;
	rmy = y mod global.roomhg;
	
	if (x div global.roomwd == global.current_column and y div global.roomhg == global.current_row and room == rm_level) or room != rm_level{
		ds_grid_set_region(global.fluid_grid,(rmx - 16) div 4,(rmy + 3) div 4,(rmx + 15) div 4,(rmy + 14) div 4,30);
		ds_grid_set_region(global.fluid_grid,((rmx - 16) + 4) div 4,((rmy + 3) - 4) div 4,(rmx + 15 - 4) div 4,(rmy + 14 + 4) div 4,30);
	}
}else if go{
	scr_pause_start(5);
}