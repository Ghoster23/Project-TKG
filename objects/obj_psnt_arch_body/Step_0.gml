event_inherited();

///Exist
if go and not global.pause{
	
	scr_pause_end(7);
    
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
		
	        scr_drops();
			var pos = ds_list_find_index(global.act_enemy_list,id);
			ds_list_delete(global.act_enemy_list,pos);
			global.kld_enemies += 1;
			
			//delete old stuff
			with weapon { instance_destroy(); }
			with head { instance_destroy(); }
			instance_destroy(tell);
			instance_destroy();
			
		break;
		case "stun":
			image_blend = c_teal;
		break;
	}
    
    image_blend = c_white;
	
	if instance_exists(tell){
		tell.image_xscale = weapon.image_index / 4;
		tell.image_yscale = weapon.image_index / 4;
	}
	
}else if go{
	scr_pause_start(7);
}