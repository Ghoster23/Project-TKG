event_inherited();

///Exist
if go and not global.pause{
    scr_pause_end(alarm_count);
    
    ///Enemy Behaevior
    switch(state){
        case 0:
            scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go after the player
			scr_define_path(self, global.body);
			scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),1);
            
        break;
        case 2:  //Dead state
			if(!frozen){
				image_speed = 0.2;
			 
	            if image_index == 5{
					if(instance_exists(fl_gen)){
						instance_destroy(fl_gen);
					}
				
					scr_kill_enemy();
	            }
			}else {
				part_particles_create(global.ps_if,x,y,global.pt_icebits,24);
				
				if(instance_exists(fl_gen)){
					instance_destroy(fl_gen);
				}
				
				scr_kill_enemy();
			}
			
		break;
		
		case 6: //Stun
		break;

    }
	
	if(instance_exists(fl_gen)){
		fl_gen.on = true;
		fl_gen.x  = phy_position_x - 19 * fl_gen.image_xscale;
		fl_gen.y  = phy_position_y -  2 * fl_gen.image_yscale;
	}
    
}else if go{
	scr_pause_start(alarm_count);
}