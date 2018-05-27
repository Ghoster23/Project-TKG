event_inherited();

///Exist
if go and not global.pause{
    scr_pause_end(5);
    
    ///Enemy Behaevior
    switch(state){
        case 0:  //Walk around a bit
			scr_idle_enemy(40,20);
            
        break;
        case 1:  //Go towards the player
			scr_define_path(self, global.body);
			path = global.ai_path;
			scr_move_entity(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
			
        break;
        case 2:  //Attack the player
            if(weapon.attack){
                weapon.attack = true;
				
				if(!instance_exists(tell)){
					tell = instance_create_layer(x,y,layer,obj_melee_tell);
					tell.owner = id;
				}                
            }
        
        break;
		case 3:  //Retreat
			image_speed = 0.4;
			dir = point_direction(x,y,global.body.x,global.body.y) + 180;
            scr_move_entity(dir,1);
			
		break;
        case 4:  //Dead State
            solid = false;
			image_speed = 0;
			
			dead_head=instance_create_layer(x,y,"Instances",obj_psnt_deadhead);
			dead_head.face = face;
			dead_head.hair = hair;
			dead_head.skin_color = skin_color;
			dead_head.hair_color = hair_color;
			dead_head.image_xscale=image_xscale;
			
			instance_create_layer(x,y,layer,obj_blood_puddle);
			dead_body=instance_create_layer(x,y,"Instances",obj_psnt_deadbody);
			dead_body.body_color=body_color;
			dead_body.image_xscale=image_xscale;
			dead_body.sprite_index = body_dead_sprite;
			//link the two
			dead_head.body=dead_body;
			if(irandom(4)==1){
				dropped_weapon=instance_create_layer(x+weapon.offpos,y,layer,obj_dropped_melee);
				dropped_weapon.image_index=weapon.image_index;
				dropped_weapon.phy_rotation=weapon.image_angle;
				dropped_weapon.image_xscale=weapon.image_xscale;
				dropped_weapon.image_yscale=weapon.image_yscale;
			}
			
			with weapon { instance_destroy(); }
			with head { instance_destroy(); }
			with feet { instance_destroy(); }
			
			scr_kill_enemy();
		break;
	}
	
}else if go{
	scr_pause_start(5);	
}