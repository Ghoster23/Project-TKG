if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.act_enemies += 1;
    
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
            scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go towards the player
			image_speed = 0.4;
			scr_define_path(self, obj_body);
			path = global.ai_path;
            scr_move_enemy(point_direction(x,y,path_get_point_x(path,2),path_get_point_y(path,2)),1);
            
        break;
        case 2:  //Attack the player
            if cd_arrow == false and bow.image_index == 4{
                cd_arrow = true;
                alarm[1] = 2 * room_speed;
            }
        
        break;
        case 3:  //Dead State
			global.act_enemies -= 1;
	        scr_drops();
			instance_destroy();
		break;
		case "pause":
		break;
	}
    
    image_blend = c_white;
    
    ///Get Damaged
	if not damaged {
		scr_damage_enemy();
	}
    
    scr_flash_enemy();
	
	if hspd == 0 and vspd == 0{
		image_speed = 0;
	}
	
}else {
	scr_pause_start(6);
}