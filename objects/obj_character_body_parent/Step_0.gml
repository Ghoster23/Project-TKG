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
			len = stat[stats.spd] * dash_mult;
			
			if(alarm[0] == -1){				
				//Hide other player objects
				weapon.visible = false;

				//Make it invulnerable
				inv = true;

				//Set dash duration
				alarm[0] = dash_time * room_speed;
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
	
	
	//footstep sound
	if(len!=0){
		if(!audio_is_playing(snd_footstep2)){
			scr_sound(snd_footstep2);
		}
	}
	
}else {
	//Start Pause
	scr_pause_start(5);
	
}