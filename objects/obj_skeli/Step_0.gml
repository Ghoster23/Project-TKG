event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(8);

	//states for enemy behaviour
	switch(state){
        case "go2head":  //move torwards player to give contact damage
			if(skullt==noone){
				exit;
			}
			scr_define_path(self, skullt);
			path = global.ai_path;
			scr_move_entity(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),0.65);
			
			if(point_distance(x,y,skullt.x,skullt.y)<=30){
				state = "chase";
				with(skullt){
					instance_destroy();
					skullt = noone;
				}
			}	
        break;
		
		case "chase":  //move torwards player to give contact damage
			head.visible = true;
			scr_define_path(self, global.body);
			path = global.ai_path;
			scr_move_entity(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),0.8);
			
			if(point_distance(x,y,global.body.x,global.body.y)<=100){
				state = "pophead";
			}
		break;
		
		case "pophead": //remove head to fire
			head.visible = false;
			if(stat[stats.hp] <= 0) and state != 3{
			    state = "dead";
				exit;
			}
		break;
		
		case "pickup": //pickupyourskull
			if(stat[stats.hp] <= 0) and state != 3{
			    state = "dead";
				exit;
			}
		break;
		
		
		case "wait":
		case "aim": //aim torwards player
			if(stat[stats.hp] <= 0) and state != 3{
			    state = "dead";
				exit;
			}
			
		break;
		
		case "throwhead": //throw that head at em
			if(stat[stats.hp] <= 0) and state != 3{
			    state = "dead";
				exit;
			}
			
			skullt = instance_create_layer(x,y,layer,obj_skeli_head_t);
			with(skullt){
				physics_apply_impulse(x,y,lengthdir_x(50,other.player_dir),lengthdir_y(50,other.player_dir));
			}
			alarm_set(7,waittime);
			state = "wait";
			
		break;
		
		
		case "dead": //dead
			
			solid = false;
			image_speed = 0;
			
			mp_grid_clear_cell(global.ai_grid,x div 32, y div 32);
			//sounds
			instance_create_layer(x,y,layer,obj_mage_deadbody);
            scr_kill_enemy();
			
		break;
		
		case "pause":	
		break;
	}   

}else if go{
	scr_pause_start(8);
	
}
