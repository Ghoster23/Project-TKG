/// @description Move the player
if not global.pause {
	//End Pause
	scr_pause_end(3);
	
	if(state == 0 || (state == 2 && !global.dash_cd)){
		// get the axis
		xaxis = (right_key - left_key);
		yaxis = (down_key  -   up_key);

		//get direction
		dir = point_direction( 0, 0, xaxis, yaxis);
	}
	
	//States
	switch state {
		case 0: //Free
			scr_move_state();
			
			//Orientation
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
			
			image_xscale = 1;
		break;
		case 1: //Stuck
			
		break;
		case 2: //Dash
			if(!global.dash_cd){
				scr_dash_state();
			}
			
			var ori = 0;
			
			if(dir == 0){
				ori = 1
			}else if(dir == 90 || dir == 45 || dir == 135){
				ori = 0;
			}else if(dir == 180){
				ori = 3;
			}else {
				ori = 2;
			}
			
			sprite_index = roll_sprs[ori];
			
			if(ori == 3){
				image_xscale = -1;
			}
			
			image_speed = 1;
		break;
		case 3: //Dead
		break;
	}
	
	///Equipables' effects
	

	///Statuses
	if(status_check){
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
	
	//Turn to camera in status menu
	if(obj_ig_menu_controller.state == "status"){
		image_speed = is;
		spr_side    = 2;
	}
	
	//Move
	if(len != 0){
		//get the hspd and vspd
		hspd = lengthdir_x(len,dir);
		vspd = lengthdir_y(len,dir);

		phy_position_x += hspd;
		phy_position_y += vspd;
	}
	
	//Pick-up
	var pick_up = instance_place(x,y,obj_item);
	
	if(pick_up != noone && pick_up.pick_up){
		with(pick_up){
			amount = scr_pickup_item(type,item,amount);
		}
	}
	
	//footstep sound
	if(len!=0){
		if(!audio_is_playing(snd_footstep2)){
			scr_sound(snd_footstep2);
		}
	}
	
}else {
	//Start Pause
	scr_pause_start(3);
	
}