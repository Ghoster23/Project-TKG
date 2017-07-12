/// @description decide the state

if state != 3{   //if not dead decide between state 0 or 1
	//get dir of player;
	action_dir=point_direction(x,y,obj_body.x,obj_body.y);
	
	if (dis >=0 and dis <=80){        //if player is in range
		if state!=1{		          //and isnt already hiding 
			state = 1;				
			substate="hiding";        //hide
			alarm[2]=room_speed*0.4;
		}
		
		alarm[1]=room_speed*state_time;	  //if it is already hidding try later                          
							 

    }
	else{					          //if player is not in range
		if state == 1{				  //and spider is hiding
			image_speed=0;	          
			state = 2;                //come out
			substate="nothing";		  //reset substate
			alarm[3]=room_speed*0.4;
		}
		
		else{				          //if spider is not hidding
			state=0;                  //chase
			moved=false;
			
			alarm[2]=room_speed*move_time; //alarm to say spider has stopped moving
			
			alarm[1]=room_speed*state_time;	//choose the state
		}
	}
	
}

 