//follow the player for the duration of its life span
x += obj_body.hspd;
y += obj_body.vspd;


//knockback
if image_index == 1 and not instance_exists(obj_kb){
    instance_create_layer(x,y,layer,obj_kb);
}

//pause
if global.pause{
	image_speed = 0;
}else {
	image_speed = .7;
}

//sounds for hittin stuff 
//hitting bomb
if place_meeting(x,y,obj_bomb_hs) and impact==false{
	impact=true;
	scr_sound(snd_hit_wall);
}

//Hitting SPIDER
if place_meeting(x,y,obj_hspider) and impact==false{
	impact=true;
	scr_sound(snd_hit_barrel);
}

//hitting down wall
if place_meeting(x,y,obj_wall_down) and obj_head.image_index==0 and impact==false{
	impact=true;
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	scr_sound(snd_hit_wall);
}

//hitting right wall
if place_meeting(x,y,obj_wall_right) and obj_head.image_index==1 and impact==false{
	impact=true;
	
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	scr_sound(snd_hit_wall);
}

//hitting up wall
if place_meeting(x,y,obj_wall_up) and obj_head.image_index==2 and impact==false{
	impact=true;
	
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	scr_sound(snd_hit_wall);
}

//hitting left wall
if place_meeting(x,y,obj_wall_left) and obj_head.image_index==3 and impact==false{
	impact=true;
	
	//stop the swoosh
	if audio_is_playing(snd_sword_slash){
		alarm[0]=4;
	}
	scr_sound(snd_hit_wall);
}

//hitting chest
if (place_meeting(x,y,obj_chest) or place_meeting(x,y,obj_mimic)) and impact==false{
	impact=true;
	scr_sound(snd_hit_chest);
}
