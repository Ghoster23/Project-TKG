event_inherited();

///Exist
if(go and not global.pause){
	
	scr_pause_end(5);
	
	image_blend = c_white;
    
    ///Enemy Behaevior
    switch(state){
		case 0: //Idle
			scr_idle_enemy(64,30);
			
		break;
        case 1: //Flee
			image_speed = 0.4;
			dir = point_direction(x,y,global.body.x,global.body.y) + 180;
            scr_move_entity(dir,1);
            
        break;
        case 2: //Advance
			image_speed = 0.4;
			scr_define_path(self, global.body);
			
			dir = point_direction(x,y,path_get_point_x(mp_path,2),path_get_point_y(mp_path,2));
            scr_move_entity(dir,1);
            
        break;
		case 3: //Aim
			dir = point_direction(x,y,global.body.x,global.body.y);
		
		break;
        case 4: //Shoot
			if(weapon.chargeup < 1){
				dir    = point_direction(x,y,global.body.x,global.body.y);
				key[0] = true;
				
				if(!instance_exists(tell)){
					tell = instance_create_layer(x,y-32,"IF",obj_archer_tell);
                
					with tell {
						owner = other;
					}
				}
			}else {
				state  = 3;
				key[0] = false;
			}
        break;
        case 5: //Dead State
			solid = false;
			image_speed = 0;
			
			dead_head      = instance_create_layer(x,y,"Instances",obj_psnt_deadhead);
			dead_head.face = face;
			dead_head.hair = hair;
			
			dead_head.skin_color   = skin_color;
			dead_head.hair_color   = hair_color;
			dead_head.image_xscale = image_xscale;
			
			dead_body = instance_create_layer(floor(x),floor(y),"Instances",obj_psnt_deadbody);
			dead_body.body_color   = body_color;
			dead_body.image_xscale = image_xscale;
			dead_body.sprite_index = body_dead_sprite;
			
			//link the two
			dead_head.body = dead_body;
			
			if(irandom(4) == 1){
				dropped_weapon = instance_create_layer(floor(weapon.x),floor(weapon.y),layer,obj_dropped_bow);
				dropped_weapon.phy_rotation = weapon.image_angle;
				dropped_weapon.image_xscale = weapon.image_xscale;
				dropped_weapon.image_yscale = weapon.image_yscale;
			}
			
			for(var i = 0; i < array_length_1d(parts); i++){
				instance_destroy(parts[i]);
			}
		
	        scr_kill_enemy();
			
		break;
		
		case 6: //Stun
			image_blend = c_teal;
		break;
	}
	
	if instance_exists(tell){
		tell.image_xscale = weapon.image_index / 4;
		tell.image_yscale = weapon.image_index / 4;
	}
	
}else if go{
	scr_pause_start(5);
}