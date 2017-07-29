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
    
    if p_state != state{
        p_state = state;
        state_change = true;
    }
    
    ///Enemy Behaevior
    switch(state){
        case 0:
            //Get a new anchor
            if state_change == true{
                ini_point_x = x;
                ini_point_y = y;
                
                state_change = false;
            }
            
            if distance_to_point(ini_point_x,ini_point_y) <= 32{
            
                if dir_change == true{
                    alarm[3] = 15;
                    dir_change = false;
                    i_dir = irandom(360);
                }
            }else{
                i_dir = point_direction(x,y,ini_point_x,ini_point_y);
            }
        
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,i_dir);
            vspd = lengthdir_y(e_spd,i_dir);
   
            //Move
            phy_position_x += hspd;
            phy_position_y += vspd;
            
        break;
        case 1:  //Go after the player
			scr_define_path(self, obj_body);
			path = global.ai_path;
			
			dir = point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1));
			
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,dir);
            vspd = lengthdir_y(e_spd,dir);
   
            //Move
            phy_position_x += hspd;
            phy_position_y += vspd;
            
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
        e_hp -= global.p_atk div e_def;
        if e_hp > 0{
            damaged = true;
			flash=true;
			alarm[5] = room_speed*0.05;
            alarm[4] = 20;
        }
    } 
    
    if(place_meeting(x,y,obj_sword_t) and obj_sword_t.image_speed>0) and damaged == false and state != 2{
        e_hp -= global.p_satk div e_sdef;
        if e_hp > 0{
            damaged = true;
			flash=true;
			alarm[5] = room_speed*0.05;
            alarm[4] = 20;
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