/// @description Lots of things!!
if(not global.pause){	
	//States
	switch state {
		case 0: //Free
			if(xaxis != 0 || yaxis != 0){
				len = round(stat[stats.spd] * (1 + modf[stats.spd]));
				
			}else {
				len = 0;
				
			}
		break;
		case 1: //Stuck	
		break;
		case 2: //Dash
			//Give it more speed
			len = stat[stats.spd] * 2;
			
			//Orientation
			if(dir > 315 or dir < 45){ //Right    
				spr_side = 1;
			}
			
			else if(dir < 135){ //Up
				spr_side = 0; 
			}
			
			else if(dir < 225){ //Left
				spr_side = 3;     
			}
			
			else if(dir < 315){ //Down
				spr_side = 2;        
			}
			
			if(alarm[0] == -1){				
				//Hide head and other player objects
				global.weapon.visible = false;

				//Make it invulnerable
				inv = true;

				//Set dash duration
				alarm[0] = room_speed/3;
			}
		break;
		case 3: //Dead
		break;
		case 4: //Idle
		break;
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