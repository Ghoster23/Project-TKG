/// @description Move the player
if not global.pause {
	script_execute(state);
	event_inherited();
	
	for(i = 0; i < 2; i++){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}

	var rotacao = 0;
	rotacao = point_direction(x,y,mouse_x,mouse_y);

	if (rotacao > 315 or rotacao < 45){
	    spr_body = global.char_bsprs[global.char,2];
	    image_xscale = 1;
	    image_speed = .5; 
	    spr_side = 2;
    
	    with(obj_head){
	        image_index = 1;
		
	    }                   
	} 
	else if rotacao < 135{
	    spr_body = global.char_bsprs[global.char,0];
	    image_speed = .5;  
	    spr_side = 0;
    
	    with(obj_head){
	        image_index = 2;
		
	    }                    
	} 
	else if rotacao < 225{
	    spr_body = global.char_bsprs[global.char,2];
	    image_xscale = -1;
	    image_speed = .5; 
	    spr_side = 2; 
    
	    with(obj_head){
	        image_index = 3;
		
	    }                          
	} 
	else if rotacao < 315{
	    spr_body = global.char_bsprs[global.char,1];
	    image_speed = .5; 
	    spr_side = 1;      
    
	    with(obj_head){
	        image_index = 0;
		
	    }                     
	} 

	//sound
	if global.walking==true{
		if !audio_is_playing(snd_footstep2){
			scr_sound(snd_footstep2);
		}
	}
}else {
	for(i = 0; i < 2; i++){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
	
	image_speed = 0;
}