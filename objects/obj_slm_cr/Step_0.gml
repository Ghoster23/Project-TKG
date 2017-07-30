randomize();

///Start enemy
if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.act_enemies += 1;
    
    alarm[0] = 1 * room_speed;
}

///Exist
if go and not global.pause{
    visible = true;
    solid = true;

    /// Enemy States
	if global.pause == false{
	    if dis < 200 and state != 2{
	        state = 1;

	    }else if dis >= 200 and state != 2{
	        state = 0;
	    }
	}
    
    if prev_state != state{
        prev_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:
            scr_idle_enemy(32,20);
            
        break;
        case 1:  //Go after the player
			scr_define_path(self, obj_body);
			path = global.ai_path;
			scr_move_enemy(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
            
        break;
        case 2:  //Dead state
            sprite_index = spr_slime_d;
            image_speed = 0.2;
            
            if image_index == 5{
                instance_destroy();
            }
			
		break;
		case "pause":
		break;

    }
    
      
    ///Get Damaged
    if(place_meeting(x,y,obj_swing)) and damaged == false and state != 2{
        scr_damage_enemy();
        if e_hp > 0{
            
			flash=true;
			alarm[5] = room_speed*0.05;
            alarm[4] = 15;
        }
    } 
    
    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0) and damaged == false and state != 2{
        scr_damage_enemy();
        if e_hp > 0{
            
			flash=true;
			alarm[5] = room_speed*0.05;
            alarm[4] = 15;
        }
    }
    
    ///Die
    if(e_hp <= 0) and state != 2{
		flash=true;
		alarm[5] = room_speed*0.02;
        global.act_enemies -= 1;
        alarm[1] = 16;
                
        sprite_index = spr_slime_d;
        image_index = 0;
        image_speed = 0.2;
        state = 2;
        
    }

    ///Creep
	rmx = x mod global.roomwd;
	rmy = y mod global.roomhg;
	
	if (x div global.roomwd == global.current_column and y div global.roomhg == global.current_row and room == rm_level) or room != rm_level{
		ds_grid_set_region(global.fluid_grid,(rmx - 16) div 4,(rmy + 3) div 4,(rmx + 15) div 4,(rmy + 14) div 4,30);
		ds_grid_set_region(global.fluid_grid,((rmx - 16) + 4) div 4,((rmy + 3) - 4) div 4,(rmx + 15 - 4) div 4,(rmy + 14 + 4) div 4,30);
	}
}

if global.pause == true{
	image_speed = 0;
}else {
	image_speed = 0.2;
}