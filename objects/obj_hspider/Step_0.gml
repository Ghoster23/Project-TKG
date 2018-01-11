if start and visible == false{
    visible = true;
	if ds_list_find_index(global.act_enemy_list,id) == -1 {
		ds_list_add(global.act_enemy_list,id);
	}
	alarm[0]=room_speed*2;
}

///Exist
if go and not global.pause{
	scr_pause_end(6);

	//states for enemy behaviour
	switch(state){
        case 0:  //move like a spider
			if moved==false{ 
				
				sprite_index=spr_hspider_walk;
				image_speed=2;
				if (action_dir <= 90 or action_dir >= 270){
					image_xscale=-1;
				}
				
				else{
					image_xscale=1;
				}
				
	            scr_move_enemy(action_dir,1);
				
            }
			else if moved==true{ 
				image_xscale=1
				image_index=0;
				image_speed=0;
			}

        break;
		
		case 1: //hide and shoot
			
			if substate == "hiding"{
				image_xscale=1
				sprite_index=spr_hspider_hide;
				image_speed=1.1;
			
			}
			else if substate=="shooting"{
				image_xscale=1
				sprite_index=spr_hspider_shoot;
			}
			else{
				image_speed=0;
			}
			
			var explosion = instance_place(x,y,obj_explosion);
		
			if(explosion){
				scr_damage_enemy();
			}
			
		break;
		
		case 2:  //un-hide
			image_xscale=1
			sprite_index=spr_hspider_unhide;
			image_speed=1.1;
			
		
		break; 
		
		case 3: //dead
		
			solid = false;
			image_speed = 0;
            instance_create_layer(x,y,layer,obj_cadaver);
            
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
			ds_list_delete(global.act_enemy_list,pos);
			global.kld_enemies += 1;
			instance_destroy();
		break;
		
		case "pause":
		
		break;
	}
	
	///Die
    if(e_hp <= 0) and state != 3{
        state = 3;
        
    }
	

	///Get Damaged
	if not damaged and not state == 1{
		scr_damage_enemy();
	}

}else if go{
	scr_pause_start(6);
	
}
