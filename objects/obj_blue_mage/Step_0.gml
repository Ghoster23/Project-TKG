event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(alarm_count);

	//states for enemy behaviour
	switch(state){
        case "ghostfollow":  //move torwards player to give contact damage
			//probably not permanent - check if there is any lit fire and if there inst die
			mages_controller.check_fires_all_off = true;
			mages_controller.calculate = true;
		
			inv = true;
			scr_define_path(self, global.body);
			scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),0.65);
			
			if(point_distance(x,y,global.body.x,global.body.y)<=55){
				alarm_set(7,0.2*room_speed);
				physics_apply_impulse(x,y,lengthdir_x(25,player_dir),lengthdir_y(25,player_dir));
				state = "attackwait";
			}
        break;
		
		case "ghost2mage": //transition state between ghost and mage
			instance_create_layer(x,y,layer,obj_mage_transform);
			inv = false;
			state = "magego2fire";
		break;
		
		case "mage2ghost": //transition state between mage and ghost
			alarm_set(9,lightingtime/2);
			state = "wait";
		break;
		
		case "magego2fire": //make mage go to the nearest unlit fire
			mages_controller.calculate = true;
			
			//check if dead and if so kill it
			if(stat[stats.hp] <= 0) and state != 3{
			    state = "dead";
				exit;
			}
			if(pair!=noone){
				
				scr_define_path(self, pair);
				scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),1);
			
				if(point_distance(x,y,pair.x+pair.sprite_width/2,pair.y+pair.sprite_height/2)<=30 and pair.on==false){
					state = "wait";
					alarm_set(8,lightingtime/2);
				}
			}
		break;
		
		case "attackwait":
		case "wait":
			
		
		break;
		
		case "lightfire": //light it 
			//check if dead and if so kill it
			if(stat[stats.hp] <= 0) and state != 3{
			    state = "dead";
				exit;
			}
			if(pair!=noone){
				
				with(pair){
					if(on==false){
						on = true;
						mages_controller.check_fires_all_on = true;
						mages_controller.calculate = true;
					}
				}
			}
			state="magego2fire";
			mages_controller.calculate = true;
			
		break;
		
		
		case "dead": //dead
			ds_list_delete(mages_controller.mages,ds_list_find_index(mages_controller.mages,id));
			solid = false;
			image_speed = 0;
			
			mp_grid_clear_cell(mp_grid,x div 32, y div 32);
			//sounds
			instance_create_layer(x,y,layer,obj_mage_deadbody);
            scr_kill_enemy();
			
		break;
		
		case "pause":	
		break;
		
		case 6: //Stun
			
		break;
	}   

}else if go{
	scr_pause_start(alarm_count);
	
}
