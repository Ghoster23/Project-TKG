if start and visible == false{
    visible = true;
    if ds_list_find_index(global.act_enemy_list,id) == -1 {
		ds_list_add(global.act_enemy_list,id);
	}
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    scr_pause_end(7);
	
	if swing == true{
		image_speed = 0;
	}
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
			scr_idle_enemy(40,20);
            
        break;
        case 1:  //Go towards the player
			scr_define_path(self, global.body);
			path = global.ai_path;
			scr_move_enemy(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
			
        break;
        case 2:  //Attack the player
            if not cd_swing {
                cd_swing = true;
                alarm[2] = 5;
                
            }
        
        break;
        case 3:  //Dead State
            solid = false;
			image_speed = 0;
            instance_create_layer(x,y,layer,obj_cadaver);
			instance_destroy(weapon);
            
            with instance_nearest(x,y,obj_cadaver){
                sprite_index = spr_peasent_m_s;
                image_index = 5;
                image_speed = 0;
                image_blend = c_gray;
                image_angle -= 90;
                phy_rotation = irandom(0);
            }
            
            scr_drops();
			var pos = ds_list_find_index(global.act_enemy_list,id);
			show_debug_message("psnt pos: " + string(pos));
			ds_list_delete(global.act_enemy_list,pos);
			global.kld_enemies += 1;
			instance_destroy();
		
		case "stun":
		break;
	}
    
    ///Get Damaged
	if not damaged {
		
		scr_damage_enemy();
		
	}
	
}else if go{
	scr_pause_start(7);	
}