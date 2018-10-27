/// @description decide the state
if(dead){
    state = 3;
}

if(stun){
    state = 6;
}
	
if(not dead and not stun){   //if not dead decide between state 0 or 1
	scr_define_path(self, global.body);
	
	action_dir = point_direction( x, y,
	path_get_point_x(mp_path,1), path_get_point_y(mp_path,1));
	
	if (dis >= 0 and dis < 128) and 
	not collision_line(x,y,global.body.x,global.body.y,obj_solid_parent,false,true){ 
		                              //if player is in range
		if state!=1{		          //and isnt already hiding 
			state = 1;				
			substate="hiding";        //hide
			alarm[5]=room_speed*0.4;
		}
		
		alarm[4]=room_speed*state_time;	  //if it is already hidding try later                          
							 

    }
	else{					                                      //if player is not in range
		if state == 1 and distance_to_object(obj_bomb_hs) > 96 {  //and spider is hiding
			image_speed=0;	          
			state = 2;                                            //come out
			substate="nothing";		                              //reset substate
			alarm[6]=room_speed*0.4;
		}
		
		else{				                //if spider is not hidding
			state=0;                        //chase
			moved=false;
			
			alarm[5]=room_speed*move_time;  //alarm to say spider has stopped moving
			
			alarm[4]=room_speed*state_time;	//choose the state
		}
	}
}