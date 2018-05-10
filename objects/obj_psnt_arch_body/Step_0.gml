event_inherited();

///Exist
if go and not global.pause{
	
	scr_pause_end(6);
	
	image_blend = c_white;
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk away
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
            if(shoot == false){
                shoot = true;
				tell  = instance_create_layer(x,y-32,"IF",obj_archer_tell);
                
				with tell {
					owner = other;
				}
            }
        
        break;
        case 3:  //Dead State
			solid = false;
			image_speed = 0;
			
			dead_head      = instance_create_layer(x,y,"Instances",obj_psnt_deadhead);
			dead_head.face = face;
			dead_head.hair = hair;
			
			dead_head.skin_color   = skin_color;
			dead_head.hair_color   = hair_color;
			dead_head.image_xscale = image_xscale;
			
			dead_body = instance_create_layer(x,y,"Instances",obj_psnt_deadbody);
			dead_body.body_color   = body_color;
			dead_body.image_xscale = image_xscale;
			dead_body.sprite_index = body_dead_sprite;
			
			//link the two
			dead_head.body = dead_body;
			
			if(irandom(4) == 1){
				dropped_weapon = instance_create_layer(weapon.x,weapon.y,layer,obj_dropped_bow);
				dropped_weapon.phy_rotation = weapon.image_angle;
				dropped_weapon.image_xscale = weapon.image_xscale;
				dropped_weapon.image_yscale = weapon.image_yscale;
			}
			
			with weapon { instance_destroy(); }
			with head { instance_destroy(); }
			instance_destroy(tell);
		
	        scr_kill_enemy();
			
		break;
		case "stun":
			image_blend = c_teal;
		break;
	}
	
	if instance_exists(tell){
		tell.image_xscale = weapon.image_index / 4;
		tell.image_yscale = weapon.image_index / 4;
	}
	
}else if go{
	scr_pause_start(6);
}