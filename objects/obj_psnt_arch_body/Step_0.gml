if start and not visible {
    visible = true;
    if ds_list_find_index(global.act_enemy_list,id) == -1 {
		ds_list_add(global.act_enemy_list,id);
	}
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    visible = true;
	
	scr_pause_end(6);
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
			image_speed = 0.4;
            scr_move_enemy(point_direction(global.body.x,global.body.y,x,y),1);
            
        break;
        case 1:  //Go towards the player
			image_speed = 0.4;
			scr_define_path(self, global.body);
			path = global.ai_path;
            scr_move_enemy(point_direction(x,y,path_get_point_x(path,2),path_get_point_y(path,2)),1);
            
        break;
        case 2:  //Attack the player
            if shoot == false {
                shoot = true;
				tell = instance_create_layer(x,y-32,"IF",obj_archer_tell);
                
				with tell {
					owner = other;
				}
            }
        
        break;
        case 3:  //Dead State
	        scr_drops();
			var pos = ds_list_find_index(global.act_enemy_list,id);
			show_debug_message(pos);
			ds_list_delete(global.act_enemy_list,pos);
			instance_destroy(tell);
			instance_destroy(bow);
			instance_destroy();
			
		break;
		case "pause":
		break;
	}
    
    image_blend = c_white;
	
	if instance_exists(tell){
		tell.image_xscale = bow.image_index / 4;
		tell.image_yscale = bow.image_index / 4;
	}
    
    ///Get Damaged
	if not damaged {
		scr_damage_enemy();
	}
	
	if hspd == 0 and vspd == 0{
		image_speed = 0;
	}
	
}else if go{
	scr_pause_start(6);
}