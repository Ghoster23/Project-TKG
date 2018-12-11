event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(alarm_count);
	
	if(stat[stats.hp] <= 0){
		state = "dead";
	}

	//states for enemy behaviour
	switch(state){
        case "go2head":  //move torwards player to give contact damage
			if(skullt==noone){
				exit;
			}
			scr_define_path(self, skullt);
			scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),1.2);
			
			if(point_distance(x,y,skullt.x,skullt.y)<=30 and skullt.z <= 8){
				skullt.phy_speed_x=0;
				skullt.phy_speed_y=0;
				phy_speed_x = 0;
				phy_speed_y = 0;
				state = "pickup";
			}	
        break;
		
		case "chase":  //move torwards player to give contact damage
			head.visible = true;
			scr_define_path(self, global.body);
			scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),1);
			
			if(point_distance(x,y,global.body.x,global.body.y)<=200){
				state = "pophead";
			}
		break;
		
		case "pophead": //remove head to fire
			head.visible = false;
		break;
		
		case "pickup": //pickupyourskull
		break;
		
		
		case "wait":
		case "aim": //aim torwards player
		break;
		
		case "throwhead": //throw that head at em
			skullt = scr_create_damage_dealer(x+lengthdir_x(10,player_dir),
								y+lengthdir_y(10,player_dir),
								obj_skeli_head_t,id,false,
								stat[stats.satk]*(1+modf[stats.satk]),
								stats.sdef,
								2,0);
			with(skullt){
				layer = layer_get_id("Instances");
				physics_apply_impulse(x,y,lengthdir_x(80,other.player_dir),lengthdir_y(80,other.player_dir));
			}
			alarm_set(7,waittime);
			state = "wait";
			
		break;
		
		
		case "dead": //dead
			solid = false;
			image_speed = 0;
			
			mp_grid_clear_cell(mp_grid,x div 32, y div 32);
			
			//sounds
			instance_create_layer(x,y,layer,obj_skeli_deadbody);
			if(!instance_exists(skullt)){
				skullt = scr_create_damage_dealer(x,y,
								obj_skeli_head_t,global.body,false,
								stat[stats.satk]*(1+modf[stats.satk]),
								stats.sdef,
								2,0);
				with(skullt){
					physics_apply_impulse(x,y,lengthdir_x(20,180+other.player_dir),lengthdir_y(20,180+other.player_dir));
				}
			}
			
            scr_kill_enemy();		
		break;
		
		case "pause":	
		break;
	}   

}else if go{
	scr_pause_start(alarm_count);	
}
