event_inherited();

///Exist
if go and not global.pause{
    scr_pause_end(5);
    
    ///Enemy Behaevior
    switch(state){
        case 0:
            scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go after the player
			scr_define_path(self, global.body);
			path = global.ai_path;
			scr_move_enemy(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
            
        break;
        case 2:  //Dead state
			image_speed = 0.2;
			 
            if image_index == 5{
				scr_drops();
				var pos = ds_list_find_index(global.act_enemy_list,id);
				
				ds_list_delete(global.act_enemy_list,pos);
				global.kld_enemies += 1;
				instance_destroy();
            }
			
		break;
		case "pause":
		break;

    }
	
	if state != 2 and place_meeting(x,y,global.body){
		scr_damage_player(1);
		scr_player_status_apply(0,6);
	}
    
	//Get damaged
	if not damaged {
		scr_damage_enemy();
	
	}
	
}else if go{
	scr_pause_start(5);
}