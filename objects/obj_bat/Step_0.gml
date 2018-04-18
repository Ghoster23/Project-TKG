event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(8);
    
    ///Enemy Behavior
    switch(state){
		///Idle
        case 0:
			image_speed=1.5;
			scr_idle_enemy(32,20);
            
        break;
		
		///Chase the player
        case 1:
			image_speed=1.5;
            scr_move_enemy(point_direction(x,y,global.body.x,global.body.y),1);
            
        break;
		
		///Dash towards the player
        case 2:
			image_speed = 0;
			
			if alarm[6] == -1 and not dash_cd{
				alarm[6] = 10;
			}
            
			if dash {
				scr_move_enemy(dir,4);
				part_emitter_region(global.ps_if,em,x,x,y,y,pt_shape_smoke,0);
				part_emitter_burst(global.ps_if,em,global.pt_smoke,1);
			
				//Cooldown
		        if dash_cd == false{
					alarm[1] = 15;
					dash_cd = true;
		        }
			}
			
        break;
		
		///Die
        case 3:
			//Change sprite
			if sprite_index != spr_bat_d {
	            sprite_index = spr_bat_d;
				image_index = 0;
				image_speed = 0.5;
				flash = false;
			}
			
			if image_index == 3{
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
	
	if state != 3 and place_meeting(x,y,global.body) {
		scr_damage_player(1);
	
	}    
}

if global.pause == true{
	scr_pause_start(8);
}