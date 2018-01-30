/// @description Move the player
if not global.pause {
	//Determine player state
	script_execute(state);
	
	//End Pause
	scr_pause_end(2);
	
	//Dash 
	if global.dash_cd and alarm[1] == -1{
		alarm[1] = 0.6 * room_speed;
	}
		
	if(not global.status[1,0]){
		rotation = point_direction(x,y,mouse_x,mouse_y);
	
		//Right
		if (rotation > 315 or rotation < 45){
		    image_speed  = is; 
		    spr_side     =   1;
                  
		}
		//Up
		else if rotation < 135{
		    image_speed  = is;  
		    spr_side     =   0;
                       
		}
		//Left
		else if rotation < 225{
		    image_speed  = is; 
		    spr_side     =   3; 
                           
		}
		//Down
		else if rotation < 315{
		    image_speed =  is; 
		    spr_side    =    2;      
                       
		} 
	}

	//Sound
	if(global.walking == true){
		if(!audio_is_playing(snd_footstep2)){
			scr_sound(snd_footstep2);
		}
	}
	
}else {
	//Start Pause
	scr_pause_start(2);
	
}