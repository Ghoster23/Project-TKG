/// @description decide the state

if state != 2{   //if not dead decide between state 0 or 1
	//get dir of player;
	action_dir=point_direction(x,y,obj_body.x,obj_body.y);
	
	if (dis >=0 and dis <=40){
		state = 1;
		show_debug_message("runing the alarm and state is 1");
    }
	else{
		state=0;
		moved=false;
		show_debug_message("runing the alarm and state is 1");
		alarm[2]=room_speed*move_time; //alarm to say spider has stopped moving
	}
	
	alarm[1]=room_speed*state_time;	//choose the state
}

