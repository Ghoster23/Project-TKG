//pause
if global.pause{
	image_speed = 0;
}else {
	image_speed = .7;
}

//sounds for hittin stuff 
//hitting bomb
if place_meeting(x,y,obj_simple_bomb) and impact==false{
	impact=true;
	scr_sound(snd_hit_wall);
}

//Hitting SPIDER
if place_meeting(x,y,obj_hspider) and impact==false{
	impact=true;
	if !audio_is_playing(snd_hit_barrel){
		scr_sound(snd_hit_barrel);
	}
}

//hitting down wall
if (place_meeting(x,y,obj_wall_down_left) or place_meeting(x,y,obj_wall_down_right)) and impact==false{
	impact=true;
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}

//hitting right wall
if (place_meeting(x,y,obj_wall_right_up) or place_meeting(x,y,obj_wall_right_down)) and impact==false{
	impact=true;
	
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}

//hitting up wall
if (place_meeting(x,y,obj_wall_up_left) or place_meeting(x,y,obj_wall_up_right)) and impact==false{
	impact=true;
	
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}

//hitting left wall
if (place_meeting(x,y,obj_wall_left_up) or place_meeting(x,y,obj_wall_left_down)) and impact==false{
	impact=true;
	
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}

//hitting chest
if (place_meeting(x,y,obj_chest) or place_meeting(x,y,obj_mimic)) and impact==false{
	impact=true;
	if !audio_is_playing(snd_hit_chest){
		scr_sound(snd_hit_chest);
	}
	
}
