/// @description Move the player
if not global.pause {
	//Determine player state
	script_execute(state);
	
	//End Pause
	scr_pause_end(3);
	
	//Dash 
	if global.dash_cd and alarm[1] == -1{
		alarm[1] = 0.6 * room_speed;
	}
	
	///Equipables' effects
	

	///Statuses
	if(status_check == true and not global.pause){
		//Poisoned
	    scr_player_status_check(0);
    
		//Stuck
	
		//Regen
		scr_player_status_check(2);
	
		//Compass
		scr_player_status_check(3);
	
		//OHKO
		scr_player_status_check(4);
	
		//AllSee
		scr_player_status_check(5);
	
		//Mida's
		scr_player_status_check(6);
	
		//Immune
		scr_player_status_check(7);
        
	    status_check = false;
	    alarm[2] = 1 * room_speed;
	}
	
	//Orientation
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
	
	//Pick-up
	var pick_up = instance_place(x,y,obj_item);
	
	if(pick_up){
		with(pick_up){
			amount = scr_pickup_item(type,item,amount);
		}
	}
	
}else {
	//Start Pause
	scr_pause_start(3);
	
}