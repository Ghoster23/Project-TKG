event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(8);
    
    ///Enemy Behavior
    switch(state){
		///Idle
        case 0:
			scr_idle_enemy(32,20);
            
        break;
		
		///Chase the player
        case 1:
            scr_move_entity(point_direction(x,y,global.body.x,global.body.y),1);
            
        break;
		
		///Dash towards the player
        case 2:			
			if(alarm[4] == -1 and not dash_cd){
				alarm[4] = (1/3) * room_speed;
			}
            
			if(dash){
				scr_move_entity(dir,4);
				part_emitter_region(global.ps_if,em,x,x,y,y,pt_shape_smoke,0);
				part_emitter_burst(global.ps_if,em,global.pt_smoke,1);
			
				//Cooldown
		        if(dash_cd == false){
					alarm[6] = 1.5 * room_speed;
					dash_cd  = true;
		        }
			}
        break;
		
		///Die
        case 3:
			//Change sprite
			if sprite_index != spr_bat_d {
	            sprite_index = spr_bat_d;
				image_index  = 0;
				image_speed  = 0.5;
				flash        = false;
			}
			
			if image_index == 3{
				scr_kill_enemy();
			}
			
		break;
		case "pause":
		break;
	} 
}

if global.pause == true{
	scr_pause_start(8);
}